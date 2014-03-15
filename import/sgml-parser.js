
"use strict";

//var process = require('process');


function convertEntities(str) {
  
  str = "" + str;
  return str
    .replace(/&Scaron;/g, 'Š')
    .replace(/&ast;/g, '*')
    .replace(/&commat;/g, '@' )
    .replace(/&dash;/g, '‐')
    .replace(/&emsp;/g, ' ')
    .replace(/&ensp;/g, ' ')
    .replace(/&equals;/g, '=')
    .replace(/&hellip;/g, '…')
    .replace(/&ldquo;/g, '“')
    .replace(/&lsqb;/g, '[')
    .replace(/&mdash;/g, '—')
    .replace(/&ndash;/g, '–')
    .replace(/&percnt;/g, '%')
    .replace(/&plus;/g, '+')
    .replace(/&rdquo;/g, '”')
    .replace(/&rsqb;/g, ']')
    .replace(/&rsquo;/g, '’')
    .replace(/&scaron;/g, 'š')
    .replace(/&sol;/g, '/')
    .replace(/&thinsp;/g, ' ')
  ;

}

function parseSgml(sgmlData) {
  
  var jsdom = require('jsdom');
  sgmlData = convertEntities(sgmlData);
  
  jsdom.env({
    html: '<html><body>' + sgmlData + '</body></html>',
    scripts: [
        'http://code.jquery.com/jquery-1.6.2.min.js'
    //'http://localhost:8888/dev/jquery-1.6.2.js'
    ]
  , done: function(err, window) {
    
    if(err) {
      console.log(err);
      throw(err);
    }
    var $ = window.jQuery;

    var actions = [];
    
    var absPos = 1;

    var date  = $('ptk, stk').attr('ipvm');
    var docId = $('ptk, skt').attr('tunniste');
    
    $('pjkohta, kyskesk').each(function() {
      var $kohta = $(this);
      var subject = $kohta.find('asia, kysym').text().replace(/\r\n/g, " ");
//console.log("ASIA: " + subject);
      $kohta.find('pvuoro, sktpvuor').each(function() {

        /*
        if(actions.length > 12) {
          return;
        }
        */

        var $pvuoro = $(this);
        var $hlo = $pvuoro.find('henkilo');
        var speaker = {
          number: $hlo.attr('numero'),
          firstName: $hlo.find('etunimi').text(),
          lastName: $hlo.find('sukunimi').text(),
          group: $pvuoro.find('ekryhma').text()
        }

        if(!speaker.group) {
          delete speaker.group;
        }

        var paragraphs = [];

        var lang = 'se';

        $pvuoro.find('te, rte').each(function() {
          // hehheh: jos vähänkään suomea, käytetään sitä.
          if(this.nodeName=='TE') {
            lang = 'fi';
          }
          paragraphs.push($(this).text().replace(/\r\n/g, " "));
        });

        var text = paragraphs.join('\n\n');

        // otetaan aluksi vähemmän:
        //text = text.substring(0,50).replace(/\s+\S+$/, "");

  //console.log("  [" + $pvuoro.attr('pjnro') + "]" + speaker.lastName);
  //return;

        actions.push({
          speaker: speaker,
          text: text,
          lang: lang,
          pos: $pvuoro.attr('pjnro'),
          absPos: absPos,
          subject: subject,
          date: date,
          docId: docId
        });
        absPos++;
      });
    });
    console.log(JSON.stringify(actions, 4, 4));
  }});
}


var src = process.argv[2];
if(/^https?:\/\//.test(src)) {
  var request = require('request');
  request(src, function(error, response, body) {
    if (!error && response.statusCode == 200) {
      parseSgml(body);
    } else {
      throw "ERROR: " + error;
    }
  });
} else {
  var fs = require('fs');
  parseSgml(fs.readFileSync(src));
}
