<%@ page language="java" import="com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VaahanMitra</title>
<script>
var expanded = false;

function showCheckboxes() {
  var checkboxes = document.getElementById("checkboxes");
  if (!expanded) {
    checkboxes.style.display = "block";
    expanded = true;
  } else {
    checkboxes.style.display = "none";
    expanded = false;
  }
}


</script>
<style>

 .multiselect {
  width: 200px;
}

.selectBox {
  position: relative;
}

.selectBox select {
  width: 100%;
  font-weight: bold;
}

.overSelect {
  position: absolute;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
}

#checkboxes {
  display: none;
  border: 1px #dadada solid;
}

#checkboxes label {
  display: block;
}

#checkboxes label:hover {
  background-color: #1e90ff;
}
</style>
</head>
<body>
<%

String brand=request.getParameter("brand");
GetNewCarDetails usedCar=new GetNewCarDetails();
ArrayList<AddCar> carModel=usedCar.getAddCarModel(brand);
Iterator it= carModel.iterator();
%>

  <div class="multiselect">
    <div class="selectBox" onclick="showCheckboxes()">
      <select>
        <option>Select an option</option>
      </select>
      <div class="overSelect"></div>
    </div>
    <div id="checkboxes">
      <label for="one">
        <input type="checkbox" id="one" />First checkbox</label>
      <label for="two">
        <input type="checkbox" id="two" />Second checkbox</label>
      <label for="three">
        <input type="checkbox" id="three" />Third checkbox</label>
    </div>
  </div>


<%-- <select name="carModel" id="carModel" class="form-control form-control-sm" onchange="getVariantName(this.value)" required>
<option value="" style="display: none;">SELECT MODEL</option>
<%
while(it.hasNext()){
	AddCar carM=(AddCar)it.next();
%>
	<option value="<%=carM.getCAR_MODEL()%>"><%=carM.getCAR_MODEL()%></option>
<% 
}
%>
</select> --%>
</body>
</html>