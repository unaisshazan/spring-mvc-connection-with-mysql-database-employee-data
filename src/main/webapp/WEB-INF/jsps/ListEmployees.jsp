<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link data-require="kendo-bootstrap-css@*" data-semver="2013.2.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.common.min.css" />
    <link data-require="kendo-bootstrap-css@*" data-semver="2013.2.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.bootstrap.min.css" />
    <link data-require="kendo@*" data-semver="2013.3.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.common.min.css" />
    <link data-require="kendo@*" data-semver="2013.3.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.rtl.min.css" />
    <link data-require="kendo@*" data-semver="2013.3.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.default.min.css" />
    <link data-require="kendo@*" data-semver="2013.3.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.dataviz.min.css" />
    <link data-require="kendo@*" data-semver="2013.3.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.dataviz.default.min.css" />
    <link data-require="kendo@*" data-semver="2013.3.716" rel="stylesheet" href="http://cdn.kendostatic.com/2013.2.716/styles/kendo.mobile.all.min.css" />
    <link data-require="bootstrap-css@3.0.3" data-semver="3.0.3" rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" />
    <script data-require="jquery@*" data-semver="2.0.3" src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
    <script data-require="kendo@*" data-semver="2013.3.716" src="http://cdn.kendostatic.com/2013.2.716/js/kendo.all.min.js"></script>
    <script data-require="bootstrap@*" data-semver="3.0.3" src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; chars``et=ISO-8859-1">
<title>Insert title here</title>
<style>
      /* Style the tab */
body{
font-size:50px;}
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons that are used to open the tab content */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}
      
      div.abc
      { border: 2px solid  black;
   
   
        
        max-width: 15%;
            height: 400px;
        max-height:400px;
          Overflow-x:scroll;
           Overflow-y:scroll; 
        
      
      } 
    
      
      </style>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<body id="boder">


</div>
	<div class="container">
		<h1>Employee Details</h1>
		<p align="right">
			<button
				onclick="window.location.href = 'showFormForAdd.html'; return false;"
				class="btn btn-primary">Add Employee</button>
		</p>
		<hr />
		<table border="1" class="table table-striped table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>Full Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Hobbies</th>
					<th>Country</th>
					<th>Address</th>
					<th>Actions</th>
				</tr>
			</thead>
			<c:forEach items="${employeeList}" var="e">
				<c:url var="updateLink" value="/employee/displayUpdateForm.html">
					<c:param name="employeeId" value="${e.id}" />
				</c:url>

				<c:url var="deleteLink" value="/employee/displayDeleteForm.html">
					<c:param name="employeeId" value="${e.id}" />
				</c:url>
				<tbody>
					<tr>
						<td>${e.email}</td>
						<td>${e.fullname}</td>
						<td>${e.gender}</td>
						<td>${e.hobbies}</td>
						<td>${e.country}</td>
						<td>${e.address}</td>
						<td><a href="${updateLink}">Update</a> | <a
							href="${deleteLink}"
							onclick="if(!(confirm('Are you sure want to delete this Employee permanently?'))) return false">Delete</a>
						</td>
					</tr>
				</tbody>
			</c:forEach>
		</table>
	</div>
	<div class="abc">


  <div class="tab">
  <button class="tablinks" onclick="openCity(event, 'tab1')">TREE 1</button>
  <button class="tablinks" onclick="openCity(event, 'tab2')">TREE 2</button>
</div>

<!-- Tab content -->
<div id="tab1" class="tabcontent">
  <div id="treeView"></div>
 
    <script src="script.js"></script>
  
</div>

<div id="tab2" class="tabcontent">
   <div id="treeView2"></div>
    <script src="script.js"></script>
</div>
	
	
</body>
</html>

<script>
var Mymodule = function(){
  var treeview = $('#treeView') .kendoTreeView({
        dataSource: [
            {
                text: "Europe",
                selected: true,
                iconBefore: "glyphicon glyphicon-folder-close",
                isFolder: true,
                id: '${e.fullname}',
            },
            {
                text: "Americas",
                iconBefore: "glyphicon glyphicon-folder-close",
                isFolder: true,
                items: [
                    {
                        text: "North America",
                        iconBefore: "glyphicon glyphicon-folder-close",
                        isFolder: true,
                        items: [
                            {
                                text: "Canada",
                                iconBefore: "glyphicon glyphicon-folder-close",
                                isFolder: true,
                                items: [
                                    {
                                        text: "United States",
                                        iconBefore: "glyphicon glyphicon-list"
                                    }
                                ]


                            },
                            {
                                text: "United States",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                            {
                                text: "Mexico",
                                iconBefore: "glyphicon glyphicon-list"
                            }
                        ]
                    },
                    {
                        text: "Central America",
                        iconBefore: "glyphicon glyphicon-list"
                    },
                    {
                        text: "South America",
                        iconBefore: "glyphicon glyphicon-folder-close",
                        items: [
                            {
                                text: "Argentina",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                            {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                             {
                                text: "Bradadsdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddzil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                            {
                                text: "Chile",
                                iconBefore: "glyphicon glyphicon-list"
                            }
                            
                        ]
                    }
                ]
            },
            {
                text: "Asia",
                iconBefore: "glyphicon glyphicon-folder-close",
                isFolder: true
                
            }],
        dragAndDrop: true,
        expand: onExpand,
        collapse: onCollapse,
        select:onSelect
      });
      
    function onExpand(e) {
      $(e.node)
            .find(".glyphicon-folder-close")
            .first()
            .removeClass("glyphicon-folder-close")
            .addClass("glyphicon-folder-open");
    }
    
    function onCollapse(e) {
        /// changes the folder open icon with the folder close icon
        $(e.node)
            .find(".glyphicon-folder-open")
            .first()
            .removeClass("glyphicon-folder-open")
            .addClass("glyphicon-folder-close");
    }
    
    function onSelect(e) {
        var kendoTreeData = $("#treeview").data("kendoTreeView"),
            nodeData = kendoTreeData.dataItem(e.node);
        
        $(".k-treeview .controlPanel").remove();
        
        if (nodeData.isFolder) {
            var plusMinus = $('#plusMinusTemplate').html();
            $(e.node).find(".k-in").first().append(plusMinus);
        } else {
            var minus = $('#minusTemplate').html();
            $(e.node).find(".k-in").first().append(minus);
        }

    }

    var kendoTreeView = $("#treeView").data("kendoTreeView");
    var dataSource = kendoTreeView.dataSource.data();

    var setCssClass = function(data) {
        for (var i = 0; i < data.length; i++) {
            var nodeData = data[i];
            if (nodeData.iconBefore) {
                var node = kendoTreeView.findByUid(nodeData.uid);
                var icon = $('<span class="' + nodeData.iconBefore + '" style="margin-right:0.5em"></span>');
                $(node).find(".k-in").first().prepend(icon);
            }

            if (nodeData.hasChildren) {
                setCssClass(nodeData.children.data());
            }
        }
    };

    setCssClass(dataSource);
}();
    var Mymodule = function(){
  var treeview = $('#treeView2') .kendoTreeView({
        dataSource: [
            {
                text: "unais",
                selected: true,
                iconBefore: "glyphicon glyphicon-folder-close",
                isFolder: true
            },
            {
                text: "ali",
                iconBefore: "glyphicon glyphicon-folder-close",
                isFolder: true,
                items: [
                    {
                        text: "bilal",
                        iconBefore: "glyphicon glyphicon-folder-close",
                        isFolder: true,
                        items: [
                            {
                                text: "ahlem",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                            {
                                text: "areej",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                            {
                                text: "wardi",
                                iconBefore: "glyphicon glyphicon-list"
                            }
                        ]
                    },
                    {
                        text: "Central America",
                        iconBefore: "glyphicon glyphicon-list"
                    },
                    {
                        text: "South America",
                        iconBefore: "glyphicon glyphicon-folder-close",
                        items: [
                            {
                                text: "Argentina",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                            {
                                text: "Brazil",
                                iconBefore: "glyphicon glyphicon-list"
                            },
                            {
                                text: "Chile",
                                iconBefore: "glyphicon glyphicon-list"
                            }
                        ]
                    }
                ]
            },
            {
                text: "Asia",
                iconBefore: "glyphicon glyphicon-folder-close",
                isFolder: true
            }],
        dragAndDrop: true,
        expand: onExpand,
        collapse: onCollapse,
        select:onSelect
      });
      
    function onExpand(e) {
      $(e.node)
            .find(".glyphicon-folder-close")
            .first()
            .removeClass("glyphicon-folder-close")
            .addClass("glyphicon-folder-open");
    }
    
    function onCollapse(e) {
        /// changes the folder open icon with the folder close icon
        $(e.node)
            .find(".glyphicon-folder-open")
            .first()
            .removeClass("glyphicon-folder-open")
            .addClass("glyphicon-folder-close");
    }
    
    function onSelect(e) {
        var kendoTreeData = $("#treeview2").data("kendoTreeView"),
            nodeData = kendoTreeData.dataItem(e.node);
        
        $(".k-treeview .controlPanel").remove();
        
        if (nodeData.isFolder) {
            var plusMinus = $('#plusMinusTemplate').html();
            $(e.node).find(".k-in").first().append(plusMinus);
        } else {
            var minus = $('#minusTemplate').html();
            $(e.node).find(".k-in").first().append(minus);
        }

    }

    var kendoTreeView = $("#treeView2").data("kendoTreeView");
    var dataSource = kendoTreeView.dataSource.data();

    var setCssClass = function(data) {
        for (var i = 0; i < data.length; i++) {
            var nodeData = data[i];
            if (nodeData.iconBefore) {
                var node = kendoTreeView.findByUid(nodeData.uid);
                var icon = $('<span class="' + nodeData.iconBefore + '" style="margin-right:0.5em"></span>');
                $(node).find(".k-in").first().prepend(icon);
            }

            if (nodeData.hasChildren) {
                setCssClass(nodeData.children.data());
            }
        }
    };

    setCssClass(dataSource);
}();
    
    
    
    function openCity(evt, cityName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
    
    var toggler = document.getElementsByClassName("caret");
    var i;

    for (i = 0; i < toggler.length; i++) {
      toggler[i].addEventListener("click", function() {
        this.parentElement.querySelector(".nested").classList.toggle("active");
        this.classList.toggle("caret-down");
      });
    }
    
</script>


