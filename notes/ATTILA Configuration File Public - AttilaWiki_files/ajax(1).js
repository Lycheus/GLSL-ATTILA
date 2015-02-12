function dataManager() {

    // Create data table
    this.data = new google.visualization.DataTable();

    this.data.addColumn('string', 'Frames');

    if (document.getElementById("ut3-check").checked) {
      this.data.addColumn('number', 'UT3');
    }

    if (document.getElementById("crysis-check").checked) {
      this.data.addColumn('number', 'Crysis');
    }

    if (document.getElementById("hl2-check").checked) {
      this.data.addColumn('number', 'HL2');
    }

    this.nframes = 0;
    this.ngames = 1;

    this.checkEventChanged = function(xmlDoc) {
        //alert(parseFloat("1.29E+06"));

        if(xmlDoc){
          numframes = parseInt(xmlDoc.getElementsByTagName("numframes")[0].childNodes[0].nodeValue);

          if (numframes > this.nframes) {

            this.data.addRows(numframes - this.nframes);

            for (i = this.nframes; i < numframes; i++) {
              this.data.setValue(i, 0, i+'');
            }

            this.nframes = numframes;

          }

          xmlRawData = xmlDoc.getElementsByTagName("data");

          for (j = 0; j < xmlRawData.length; j++) {
            this.data.setValue(j, this.ngames, parseInt(parseFloat(xmlRawData[j].childNodes[0].nodeValue)));
          }

          this.ngames++;

        }

    }

}

function checkEvent() {

    var datam = new dataManager();

    var statname = "";
    var graphictittle = "";

    if (document.getElementById("draw-option").selected) {
      statname = "draw";
      graphictittle = "Draw calls";
    }
    else if (document.getElementById("vertices-option").selected) {
      statname = "vertices";
      graphictittle = "Number of vertices";
    }

    if (document.getElementById("ut3-check").checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=ut3";

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("crysis-check").checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=crysis";

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("hl2-check").checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=hl2";

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
    chart.draw(datam.data, {width: 420, height: 300, legend: 'bottom', title: graphictittle, pointSize: 0});

}

function loadXMLDoc(dname) {
	xmlHttp = null;
	try{ // Firefox, Opera 8.0+, Safari
		xmlHttp = new XMLHttpRequest();
	}
	catch (e){ // Internet Explorer
		try{
			xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
		}
		catch (e){
			try{
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
			catch (e){
				return null;
			}
		}
	}
	xmlHttp.open("GET",dname,false);
      xmlHttp.send(null);
      return xmlHttp.responseXML;
}
