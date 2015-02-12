function changeImage(imgName, imgSrc) {
  document[imgName].src = imgSrc;
}

function addCol() {

  return;

  tableNode = document.getElementById("maintable");

  lastCol = parseInt(tableNode.attributes.getNamedItem("lastcol").nodeValue);
  numCols = document.getElementById("mainrow").getElementsByTagName("td").length;

  if (numCols < 20) {

    lastCol++;

    // New col.
    colNode = document.createElement("td");
    colNode.setAttribute("id", "col" + lastCol);

    // New remove button
    linkNode = document.createElement("a");
    linkNode.setAttribute("href", "javascript:removeCol(" + lastCol + ");");
    linkNode.setAttribute("style", "position:relative; left:188px; top:24px;");
    linkNode.setAttribute("onmouseover", "changeImage(\'removeImg" + lastCol + "\', \'remove-o.png\')");
    linkNode.setAttribute("onmouseout", "changeImage(\'removeImg" + lastCol + "\', \'remove.png\')");

    imageNode = document.createElement("img");
    imageNode.setAttribute("src", "remove.png");
    imageNode.setAttribute("name", "removeImg" + lastCol);
    linkNode.appendChild(imageNode);
    colNode.appendChild(linkNode);
    brNode = document.createElement("br");
    colNode.appendChild(brNode);

    // Chart div
    chartNode = document.createElement("div");
    chartNode.setAttribute("id", "chart_" + lastCol);
    colNode.appendChild(chartNode);
    //brNode = document.createElement("br");
    //colNode.appendChild(brNode);

    // Select stat
    selectNode = document.createElement("select");
    selectNode.setAttribute("onchange", "checkEvent(" + lastCol + ")");
    selectNode.setAttribute("name", "statsType" + lastCol);
    optionNode = document.createElement("option");
    optionNode.setAttribute("id", "draw-option" + lastCol);
    optionNode.setAttribute("value", "draw" + lastCol);
    text = document.createTextNode("Draw calls");
    optionNode.appendChild(text);
    selectNode.appendChild(optionNode);
    optionNode = document.createElement("option");
    optionNode.setAttribute("id", "vertices-option" + lastCol);
    optionNode.setAttribute("value", "vertices" + lastCol);
    text = document.createTextNode("Number of vertices");
    optionNode.appendChild(text);
    selectNode.appendChild(optionNode);
    colNode.appendChild(selectNode);
    brNode = document.createElement("br");
    colNode.appendChild(brNode);

    // Check boxes
    checkboxNode = document.createElement("input");
    checkboxNode.setAttribute("type", "checkbox");
    checkboxNode.setAttribute("onclick", "checkEvent(" + lastCol + ")");
    checkboxNode.setAttribute("id", "ut3-check" + lastCol);
    colNode.appendChild(checkboxNode);
    text = document.createTextNode("UT3");
    colNode.appendChild(text);
    brNode = document.createElement("br");
    colNode.appendChild(brNode);

    checkboxNode = document.createElement("input");
    checkboxNode.setAttribute("type", "checkbox");
    checkboxNode.setAttribute("onclick", "checkEvent(" + lastCol + ")");
    checkboxNode.setAttribute("id", "crysis-check" + lastCol);
    colNode.appendChild(checkboxNode);
    text = document.createTextNode("Crysis");
    colNode.appendChild(text);
    brNode = document.createElement("br");
    colNode.appendChild(brNode);

    checkboxNode = document.createElement("input");
    checkboxNode.setAttribute("type", "checkbox");
    checkboxNode.setAttribute("onclick", "checkEvent(" + lastCol + ")");
    checkboxNode.setAttribute("id", "hl2-check" + lastCol);
    colNode.appendChild(checkboxNode);
    text = document.createTextNode("HL2");
    colNode.appendChild(text);
    brNode = document.createElement("br");
    colNode.appendChild(brNode);

    // New text
    text = document.createTextNode("col. " + lastCol);
    colNode.appendChild(text);

    document.getElementById("mainrow").appendChild(colNode);
    document.getElementById("maintable").attributes.getNamedItem("lastcol").nodeValue = lastCol;

    checkEvent(lastCol);

  }
  else {
    alert("Nooooooooooooo!");
  }

}

function removeCol(numCol) {

  return;

  tableNode = document.getElementById("maintable");

  lastCol = parseInt(tableNode.attributes.getNamedItem("lastcol").nodeValue);
  numCols = document.getElementById("mainrow").getElementsByTagName("td").length;

  if (numCols > 1) {
    //Remove!
    colNode = document.getElementById("col" + numCol);
    document.getElementById("mainrow").removeChild(colNode);

    if (numCol == lastCol) {
      lastCol = parseInt(document.getElementById("mainrow").getElementsByTagName("td")[numCols - 2].attributes.getNamedItem("id").nodeValue.substr(3));
      document.getElementById("maintable").attributes.getNamedItem("lastcol").nodeValue = lastCol;
    }

  }
  else {
    alert("Nooooooooooooo!");
  } 

}

function selectSnapGame() {

  if (document.getElementById("snapshot-option").selected) {

    document.getElementById("gsSelect").innerHTML="<select name=\"snapshotSelect\">\n<option id=\"100103-option\" value=\"draw\">2010-01-03</option>\n<option id=\"100108-option\" value=\"draw\">2010-01-08</option>\n<option id=\"100117-option\" value=\"draw\">2010-01-17</option>\n<option id=\"100213-option2\" value=\"vertices\">2010-02-13</option>\n<option id=\"100223-option2\" value=\"vertices\">2010-02-23</option>\n<option id=\"100315-option2\" value=\"vertices\">2010-03-15</option>\n</select>";

    document.getElementById("gsMultiselect").innerHTML="<select multiple name=\"gameMultiselect\" size=\"5\">\n<option id=\"ut3-option\" value=\"draw\">UT3</option>\n<option id=\"crysis-option2\" value=\"vertices\">Crysis</option>\n<option id=\"hl2-option2\" value=\"vertices\">HL2</option>\n</select>";

  }
  else if (document.getElementById("game-option").selected) {

    //document.getElementById("gsSelect").innerHTML="<select name=\"gameSelect\">\n<option id=\"ut3-option\" value=\"draw\">UT3</option>\n<option id=\"crysis-option2\" value=\"vertices\">Crysis</option>\n<option id=\"hl2-option2\" value=\"vertices\">HL2</option>\n</select>";

    selectEl = document.createElement("select");
    selectEl.setAttribute("name", "gameSelect");
    optionEl = document.createElement("option");
    optionEl.setAttribute("id", "ut3-option");
    optionEl.setAttribute("value", "ut3");
    text = document.createTextNode("UT3");
    optionEl.appendChild(text);
    selectEl.appendChild(optionEl);
    optionEl = document.createElement("option");
    optionEl.setAttribute("id", "crysis-option");
    optionEl.setAttribute("value", "crysis");
    text = document.createTextNode("Crysis");
    optionEl.appendChild(text);
    selectEl.appendChild(optionEl);
    //document.getElementById("gsSelect").appendChild(selectEl);
    //node = document.getElementById("gsSelect");
    //node = selectEl;
    node = document.getElementById("gsSelect");
    /*alert("length: " + node);
    
    if (node) {
      document.getElementById("gsSelect").appendChild(selectEl);
    }
    else {*/
      document.replaceChild(selectEl, node);
    //}

alert("length: " + node);

    document.getElementById("gsMultiselect").innerHTML="<select multiple name=\"snapshotMultiselect\" size=\"5\">\n<option id=\"100103-option\" value=\"draw\">2010-01-03</option>\n<option id=\"100108-option\" value=\"draw\">2010-01-08</option>\n<option id=\"100117-option\" value=\"draw\">2010-01-17</option>\n<option id=\"100213-option2\" value=\"vertices\">2010-02-13</option>\n<option id=\"100223-option2\" value=\"vertices\">2010-02-23</option>\n<option id=\"100315-option2\" value=\"vertices\">2010-03-15</option>\n</select>";

  }

}


function dataManager(numChart) {

    // Create data table
    this.data = new google.visualization.DataTable();

    this.data.addColumn('string', 'Frames');

    if (document.getElementById("ut3-check" + numChart).checked) {
      this.data.addColumn('number', 'Unreal Tournament 3');
    }

    if (document.getElementById("cry-check" + numChart).checked) {
      this.data.addColumn('number', 'Crysis');
    }

    if (document.getElementById("hl2-check" + numChart).checked) {
      this.data.addColumn('number', 'Half-Life 2');
    }

    if (document.getElementById("brt-check" + numChart).checked) {
      this.data.addColumn('number', 'Burnout Paradise');
    }

    if (document.getElementById("cwh-check" + numChart).checked) {
      this.data.addColumn('number', 'Crysis Warhead');
    }

    if (document.getElementById("l4d-check" + numChart).checked) {
      this.data.addColumn('number', 'Left 4 Dead');
    }

    if (document.getElementById("grd-check" + numChart).checked) {
      this.data.addColumn('number', 'Race Driver: Grid');
    }

    if (document.getElementById("sc3-check" + numChart).checked) {
      this.data.addColumn('number', "Tom Clancy's Splinter Cell: Chaos Theory");
    }

    this.nframes = 0;
    this.ngames = 1;

    this.colors = new Array();

    this.checkEventChanged = function(xmlDoc) {
        //alert(parseFloat("1.29E+06"));

        if(xmlDoc){
          numframes = parseInt(xmlDoc.getElementsByTagName("numframes")[0].childNodes[0].nodeValue);

          if (numframes > this.nframes) {

            this.data.addRows(numframes - this.nframes);

            /*for (i = this.nframes; i < numframes; i++) {
              this.data.setValue(i, 0, i+'');
            }*/

            this.nframes = numframes;

          }

          xmlRawData = xmlDoc.getElementsByTagName("data");

          for (j = 0; j < xmlRawData.length; j++) {
            this.data.setValue(j, this.ngames, parseInt(parseFloat(xmlRawData[j].childNodes[0].nodeValue)));
          }

          this.ngames++;

          //alert(xmlDoc.getElementsByTagName("color")[0].childNodes[0].nodeValue);

          this.colors.push(xmlDoc.getElementsByTagName("color")[0].childNodes[0].nodeValue);

          //alert(xmlDoc.getElementsByTagName("color")[0].childNodes[0].nodeValue);

        }

    }

    this.finishData = function() {

      if (this.nframes > 500) {

        values = 15;
        a = this.nframes / (15 * values);

        step = 15 * parseInt(a);

        //alert("Values: " + values + " N frames: " + this.nframes + " Step: " + step);

        j = 0;
		
        for (i = 0; i < this.nframes; i = i + step) {

          this.data.setValue(j, 0, j+'');
          j++;
		  
		  //alert("j: " + j);

          //alert("finishData");
		  for (k = 0; k < (step - 1); k++) {
		    //this.data.setValue(i, 0, '');
		    j++;
		  }

		  /*while ((j + step) < (parseInt((i+1) * (a * 15)))) {
            for (k = 0; k < step; k++) {
              //this.data.setValue(i, 0, '');
              j++;
            }*/
        }

        //alert("endfinishData");
      }
	  else if (this.nframes > 0) {
	  
	    for (i = 0; i < this.nframes; i++) {
          this.data.setValue(i, 0, i+'');
		}
		
	  }

      /*for (i = 0; i < this.nframes; i++) {
        this.data.setValue(i, 0, i+'');
      }*/

    }

    this.getColors = function() {
      return this.colors;
    }

}

function getFrames(game) {

    var url= "graph.php";
    url += "?statname=draw&gamename=" + game + "&startframe=0&endframe=0";

    var xmldoc = loadXMLDoc(url);
	
	var numframes = 0;
	
	if(xmldoc){
        numframes = parseInt(xmldoc.getElementsByTagName("numframes")[0].childNodes[0].nodeValue);
	}
	
	//alert(numframes);
	
	return numframes;

}

function checkEvent(numChart) {

    //alert("CheckEvent!");

    var datam = new dataManager(numChart);

    var statname = "";
    var graphictittle = "";

    //alert("draw-option" + numChart);

    if (document.getElementById("draw-option" + numChart).selected) {
      statname = "draw";
      graphictittle = "Draw calls";
      //alert("Draw Calls");
    }
    else if (document.getElementById("vertices-option" + numChart).selected) {
      statname = "vertices";
      graphictittle = "Number of vertices";
      //alert("Vertices");
    }

    if (document.getElementById("ut3-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=ut3" + "&startframe=" + document.getElementById("ut3-start" + numChart).value + "&endframe=" + document.getElementById("ut3-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("cry-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=cry" + "&startframe=" + document.getElementById("cry-start" + numChart).value + "&endframe=" + document.getElementById("cry-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("hl2-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=hl2" + "&startframe=" + document.getElementById("hl2-start" + numChart).value + "&endframe=" + document.getElementById("hl2-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("brt-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=brt" + "&startframe=" + document.getElementById("brt-start" + numChart).value + "&endframe=" + document.getElementById("brt-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("cwh-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=cwh" + "&startframe=" + document.getElementById("cwh-start" + numChart).value + "&endframe=" + document.getElementById("cwh-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("l4d-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=l4d" + "&startframe=" + document.getElementById("l4d-start" + numChart).value + "&endframe=" + document.getElementById("l4d-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("grd-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=grd" + "&startframe=" + document.getElementById("grd-start" + numChart).value + "&endframe=" + document.getElementById("grd-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    if (document.getElementById("sc3-check" + numChart).checked) {

      var url= "graph.php";
      url += "?statname=" + statname + "&gamename=sc3" + "&startframe=" + document.getElementById("sc3-start" + numChart).value + "&endframe=" + document.getElementById("sc3-end" + numChart).value;

      xmldoc = loadXMLDoc(url);
      datam.checkEventChanged(xmldoc);

    }

    datam.finishData();

    colors = datam.getColors();

    var chart = new google.visualization.LineChart(document.getElementById('chart_' + numChart));
    chart.draw(datam.data, {width: 420, height: 300, legend: 'none', title: graphictittle, pointSize: 0, colors: colors});

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
