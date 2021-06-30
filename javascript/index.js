

	var date=1;
	var table_no=1;

	var holiday={3:"Janmastami",6:"Independance Day",54:"Gandhi Jayanti",77:"Dussehra",82:"Id-e-Milad"};

	var rows = {
		
		TH: "<th class=\"heading\"></th><th class=\"heading\">8:00-9:00</th><th class=\"heading\">9:00-10:00</th><th class=\"heading\">10:00-11:00</th><th class=\"heading\">11:00-12:00</th><th class=\"heading\">12:00-1:00</th><th class=\"heading\">1:00-2:00</th><th class=\"heading\">2:00-3:00</th><th class=\"heading\">3:00-4:00</th><th class=\"heading\">4:00-5:00</th><th class=\"heading\">5:00-6:00</th><th class=\"heading\">Date</th>",
		
		MON: "<th>MON</th><td></td><td></td><td colspan=\"2\" id=\"table!row1column3\">CS 33101<br>MAU</br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,1,3)\"></td><td></td><td rowspan=\"5\"></td><td colspan=\"3\" id=\"table!row1column6\">CS 33204<br>DIV + GF-3 + GF6 + GF16<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,1,6)\"></td><td></td>",
		TUE: "<th>TUE</th><td></td><td></td><td id=\"table!row2column3\">CS 33104<br>SA<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,2,3)\"></td><td colspan=\"2\" id=\"table!row2column4\">CS 33101<br>MAU<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,2,4)\"></td><td></td><td colspan=\"2\" id=\"table!row2column7\">CS 33102<br>AKS<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,2,7)\"></td><td></td>",
		WED: "<th>WED</th><td></td><td colspan=\"2\" id=\"table!row3column2\">CS 33104<br>SA<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,3,2)\"></td><td></td><td id=\"table!row3column4\">CS 33105<br>JSK<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,3,4)\"></td><td></td><td colspan=\"2\" id=\"table!row3column7\">CS 33102<br>AKS<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,3,7)\"></td><td></td>",
		THU: "<th>THU</th><td colspan=\"3\" id=\"table!row4column1\">CS 33201<br>MAU + GF-2 + GF3<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,4,1)\"></td><td colspan=\"2\" id=\"table!row4column2\">CS 33103<br>PD<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,4,2)\"></td><td></td><td colspan=\"3\" id=\"table!row4column5\">CS 33202<br>GF-8 + GF16<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,4,5)\"></td>",
		FRI: "<th>FRI</th><td></td><td colspan=\"3\" id=\"table!row5column2\">CS 33203<br>SA + GF-8 + GF-12<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,5,2)\"></td><td></td><td id=\"table!row5column5\">CS 33103<br>PD<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,5,5)\"></td><td></td><td colspan=\"2\" id=\"table!row5column7\">CS 33105<br>JSK<br><input type=\"checkbox\" class=\"chbox\" onclick=\"changeColor(this,#,5,7)\"></td>",
		SAT: "<th>SAT</th><td colspan=\"10\" class=\"empty\"></td>",
		SUN: "<th>SUN</th><td colspan=\"10\" class=\"empty\"></td>"

		
	};

	var rows2 = {
		
		MON: "<th>MON</th><td></td><td></td><td colspan=\"2\">CS 33101<br>MAU</td><td></td><td rowspan=\"5\"></td><td colspan=\"3\" >CS 33204<br>DIV + GF-3 + GF6 + GF16</td><td></td>",
		TUE: "<th>TUE</th><td></td><td></td><td >CS 33104<br>SA</td><td colspan=\"2\" >CS 33101<br>MAU</td><td></td><td colspan=\"2\">CS 33102<br>AKS</td><td></td>",
		WED: "<th>WED</th><td></td><td colspan=\"2\" >CS 33104<br>SA</td><td></td><td>CS 33105<br>JSK</td><td></td><td colspan=\"2\">CS 33102<br>AKS</td><td></td>",
		THU: "<th>THU</th><td colspan=\"3\">CS 33201<br>MAU + GF-2 + GF3</td><td colspan=\"2\">CS 33103<br>PD</td><td></td><td colspan=\"3\">CS 33202<br>GF-8 + GF16</td>",
		FRI: "<th>FRI</th><td></td><td colspan=\"3\">CS 33203<br>SA + GF-8 + GF-12</td><td></td><td>CS 33103<br>PD</td><td></td><td colspan=\"2\">CS 33105<br>JSK</td>"
		
	};


  

  function changeColor(chbox,tab,row,column)
  {
  	//window.alert("hello");
  	var x=document.getElementById("table"+tab+"row"+row+"column"+column);


    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        //document.getElementById("txtHint").innerHTML = this.responseText;
      }
    };
    var data;
    if(chbox.checked){
    var data="?t="+tab+"&r="+row+"&c="+column+"&st="+0;
     x.style.background='red';
   }
    else{
      var data="?t="+tab+"&r="+row+"&c="+column+"&st="+1;
       x.style.background='white';
    }


    xmlhttp.open("GET","alteruserdata.php"+data,true);
    xmlhttp.send();


  }

  function getDateByD(d)
  {
  	if(d<=22)
  		return (d+9)+"/08/2020";
  	if(d<=52)
  		return (d-22)+"/09/2020";
  	if(d<=83)
  		return (d-52)+"/10/2020";
  	if(d<=113)
  		return (d-83)+"/11/2020";

  	return "Classes are over";
  	
  }
	
  function showTableUtil(table_id)
  {
     var table=document.getElementById(table_id);
     var row,row_html;

     
     row=table.insertRow();
     row.innerHTML="<th colspan=\"12\"><h2>Week "+table_id.substring(3)+"</h2></th>";

     row=table.insertRow();
     row.innerHTML=rows.TH;

     row=table.insertRow();
     if(date in holiday){
     	row.style.background='yellow';
     	row.innerHTML=rows2.MON;
     }else{
     var row_array = rows.MON.split('#');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2];
     row_array = row_html.split('!');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2];
     row.innerHTML=row_html;
     }
     var col=row.insertCell();
     col.innerHTML= getDateByD(date++);


     row=table.insertRow();
    if(date in holiday){
     	row.style.background='yellow';
     	row.innerHTML=rows2.TUE;
     }else{
     var row_array = rows.TUE.split('#');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row_array = row_html.split('!');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row.innerHTML=row_html;
     }
     var col=row.insertCell();
     col.innerHTML= getDateByD(date++);


     row=table.insertRow();
     if(date in holiday){
     	row.style.background='yellow';
     	row.innerHTML=rows2.WED;
     }else{
     var row_array = rows.WED.split('#');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row_array = row_html.split('!');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row.innerHTML=row_html;
     }
     var col=row.insertCell();
     col.innerHTML= getDateByD(date++);


     row=table.insertRow();
     if(date in holiday){
     	row.style.background='yellow';
     	row.innerHTML=rows2.THU;
     }else{
     var row_array = rows.THU.split('#');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row_array = row_html.split('!');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row.innerHTML=row_html;
     }
     var col=row.insertCell();
     col.innerHTML= getDateByD(date++);


     row=table.insertRow();
    if(date in holiday){
     	row.style.background='yellow';
     	row.innerHTML=rows2.FRI;
     }else{
     var row_array = rows.FRI.split('#');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row_array = row_html.split('!');
     row_html=row_array[0]+table_id.substring(3)+row_array[1]+table_id.substring(3)+row_array[2]+table_id.substring(3)+row_array[3];
     row.innerHTML=row_html;
    }
     var col=row.insertCell();
     col.innerHTML= getDateByD(date++);

     
     row=table.insertRow();
     row.style.background='yellow';
     row.innerHTML=rows.SAT;
     var col=row.insertCell();
     col.innerHTML= getDateByD(date++);


     row=table.insertRow();
     row.style.background='yellow';
     row.innerHTML=rows.SUN;
     var col=row.insertCell();
     col.innerHTML= getDateByD(date++);

     
     
  }

  function showTable() {
  	for(var i=0;i<15;i++)
  	{
  		var id="tab"+table_no++;
  		showTableUtil(id);
  	}



   var unattended=document.getElementById("unattended_classes").getAttribute("data").split('|');

    for(var x=0;x<unattended.length-1;x++)
    {
      
      var id_array=unattended[x].split(',');
      var id="table"+id_array[0]+"row"+id_array[1]+"column"+id_array[2];

      var box=document.getElementById(id);
      var checkbx=box.childNodes;
      if(box!=null)
      {
      box.style.background='red';
      checkbx[checkbx.length-1].checked=true;
      //box.innerHTML=checkbx.length;
        }

      
    }



   
    var unrunned=document.getElementById("unrunned_classes").getAttribute("data").split('|');

    for(var x=0;x<unrunned.length-1;x++)
    {
      
      var id_array=unrunned[x].split(',');
      var id="table"+id_array[0]+"row"+id_array[1]+"column"+id_array[2];

      var box=document.getElementById(id);
      var checkbx=box.childNodes;
      if(box!=null)
      {
      box.style.background='blue';
      checkbx[checkbx.length-1].disabled=true;
      //box.innerHTML=checkbx.length;
        }

      
    }


    function sub_names(sub){

          if(sub== "33101") 
            return "Operating System";
          if(sub== "33201") 
          return "Operating System(Lab)";
          if(sub== "33102")
          return "Database Management System";
          if(sub== "33202") 
          return "Database Management System(Lab)";
          if(sub== "33103") 
          return "Soft Computing";
          if(sub== "33104")
          return "Analysis of Algorithms";
          if(sub== "33203") 
          return "Analysis of Algorithms(Lab)";
          if(sub== "33105") 
          return "Object based Modeling";
          if(sub== "33204") 
          return "Web Programming(Lab)";

          
           return "default";
         }

    var attendance=document.getElementById("attendance").getAttribute("data").split(',');

     var attr="<table id=\"showattend\"><tr><th>Course Name</th><th>Course Code</th><th>Class-Attended/Class-Runned<br>(in hours)</th> <th>Attendance<br>(in %)</th></tr>";
     var total_a=0,total_b=0;
    for(var x=0;x<attendance.length-1;x++)
    {
      
      var sub_attendance_pair=attendance[x].split(':');
      var code=sub_attendance_pair[0];
      var a=parseInt(sub_attendance_pair[1].split('/')[0]);
      var b =parseInt(sub_attendance_pair[1].split('/')[1]);
        total_a+=a;
        total_b+=b;
        if(b==0)
        {
          a=1;
          b=1;
        }
      attr+="<tr><td>"+sub_names(code)+"</td><td>CS"+code+"</td><td>"+sub_attendance_pair[1]+"</td><td>"+((a/b)*100).toFixed(2)+"%</td></tr>";

    }

    attr+="<tr style=\"background-color:#99ff00;\"><td colspan=\"2\">OverAll : </td><td>"+total_a+"/"+total_b+"</td><td> "+((total_a/total_b)*100).toFixed(2)+"%</td></tr></table>";
    
    document.getElementById("att").innerHTML=attr;

    

  }

