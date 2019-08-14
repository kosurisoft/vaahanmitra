<%@ page language="java" import="com.vaahanmitra.model.*,java.util.*,com.vaahanmitra.service.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	#ty{
	padding: 7px 11px;
    border-top: 3px solid #ff5a1f;
    background: #fff;
    border-bottom: 2px solid #f1f1f1;
	}
	.search12{
	background-color: white;
    width: 100%;
    height: 400px;
    overflow: auto;
    border:1px solid #fff;
    }
</style>
</head>
<body style="background: whitesmoke;">
<%
String sequenceno=request.getParameter("carid"); 
AddCar ac= new GetNewCarDetails().getNewCarCompleteDetails(sequenceno);

%>
                        
                                <div class="col-md-12" style="padding-left:0px;">
                                <div class="col-md-12" id="ty"> 
                                <div class="col-md-10" style="padding:0px 0px;">
                                <span class="bi1"><%=ac.getCAR_BRAND() %>> <%=ac.getCAR_MODEL()%>> <%=ac.getVARIANT_NAME()%></span><br>
                                <span class="bi1">Car ID :ac.getNEW_CAR_ID()</span><br>
                                <span class="bi1">Ex-Showroom :</span>
	                   		    <span class="bi2"><i class="fa fa-inr"></i> <%=ac.getEX_SHOW_ROOM_PRICE()%> </span>
	                   			</div>
	                   			  
	                   			 <div class="col-md-1">
	                   			 <input type="checkbox" id="scales" name="scales" style="width:20px; height: 20px;">
	                   			 </div>
	                   			 
	                   			  <div class="col-md-12" style="padding:0px 0px;">
	                   			  <div class="control-group">
                                  <label class="col-md-1 control-label" for="username" style="padding:0px 0px;">City</label>
                                  <div class="col-md-5 controls">
                                  <select id="inputState" class="form-control" style="height: 25px;">
                                  <option selected>Hyderabad</option>
                                  <option> S.r nager</option>
                                  <option> Ameerpet</option>
                                  <option> JntuH</option>
                                  <option> Kphb</option>
                                  </select>
                                  </div>
                                  </div>
	                   			  </div>
	                   			  </div>
	                   			  
	                   			  
	                              <div class="col-md-12 search12">             			  
	                   			  <div class="col-md-12" style="padding:0 0px; margin: 7px 0;">
	                   			  <div class="panel-group" id="accordion">
                                  <div class="panel panel-default">
                                  <div class="panel-heading">
                                  <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                                  <h4 class="panel-title"> Engine</h4></a>
                                  </div>
                                  <div id="collapse1" class="panel-collapse collapse in">
                                  <div class="panel-body">
                                  <div class="col-md-12 bi4">
                                  <span class="one">Engine Type :</span>
                                  <span class="two"><%=ac.getENGINE_TYPE() %></span>
                                  </div>
                                     
                                  <div class="col-md-12 bi4">
                                  <span class="one">Seating Capacity :</span>
                                  <span class="two"><%=ac.getSEATING_CAPACITY()%></span>
                                  </div>
                                     
                                  <div class="col-md-12 bi4">
                                  <span class="one">Car Make Year :</span>
                                  <span class="two"><%=ac.getCAR_MAKE_YEAR() %></span>
                                  </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">No of Gears :</span>
                                     <span class="two"><%=ac.getNO_OF_GEARS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Body Type :</span>
                                     <span class="two"><%=ac.getBODY_TYPE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Displacement(cc) :</span>
                                     <span class="two"><%=ac.getENGINE_DISPLACEMENT()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">No.of.Cylinders :</span>
                                     <span class="two"><%=ac.getNO_OF_CYLINDERS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Valves per Cylinder :</span>
                                     <span class="two"><%=ac.getVALVES_PER_CYLINDERS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Max Power :</span>
                                     <span class="two"><%=ac.getMAX_POWER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Max Torque : </span>
                                     <span class="two"><%=ac.getMAX_TORQUE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Fuel supply System :</span>
                                     <span class="two"><%=ac.getFUEL_SUPPLY_SYSTEM()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Transmission Type :</span>
                                     <span class="two"><%=ac.getTRANSMISSION_TYPE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Gear Box :</span>
                                     <span class="two"><%=ac.getGEAR_BOX()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Wheel Drive :</span>
                                     <span class="two"><%=ac.getWHEEL_DRIVE()%></span>
                                     </div>
                                     
                                     </div>
                                     </div>
                                     </div>
                                     
                                     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                     <h4 class="panel-title">Fuel </h4></a>
                                     </div>
							         <div id="collapse2" class="panel-collapse collapse">
							         <div class="panel-body">
							         <div class="col-md-12 bi4">
                                     <span class="one">Mileage :</span>
                                     <span class="two"><%=ac.getMILEAGE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Fuel Type :</span>
                                     <span class="two"><%=ac.getFUEL_TYPE() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Fuel Tank Capacity :</span>
                                     <span class="two"><%=ac.getFUELTANK_CAPACITY()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Top Speed :</span>
                                     <span class="two"><%=ac.getTOP_SPEED()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Acceleration(0-100Kms) :</span>
                                     <span class="two"><%=ac.getACCELERATION()%></span>
                                     </div>
                                     
							         </div>
							         </div>
							         </div>
							         
                                     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                                     <h4 class="panel-title">Color :</h4> </a>
                                     </div>
                                     <div id="collapse3" class="panel-collapse collapse">
                                     <div class="panel-body">
                                    
                                     <div class="col-md-12 bi4">
                                     <span class="one">Color :</span>
                                     <span class="two"><%=ac.getCOLOR()%></span>
                                     </div>
                                     
                                     </div>
                                     </div>
								     </div>
								    
								    
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                                     <h4 class="panel-title">Brakes & Tyres </h4>
                                     </a>
                                     </div>
                                     <div id="collapse4" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Tyre Type :</span>
                                     <span class="two"><%=ac.getTYRE_TYPE() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Front Brake Type :</span>
                                     <span class="two"><%=ac.getFRONT_BRAKE_TYPE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Rare Brake Type :</span>
                                     <span class="two"><%=ac.getRARE_BRAKE_TYPE() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Anti Lock Braking System :</span>
                                     <span class="two"><%=ac.getANTI_LOCK_BRAKING_SYSTEM() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Tyre Size :</span>
                                     <span class="two"><%=ac.getTYRE_SIZE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Wheel Size :</span>
                                     <span class="two"><%=ac.getWHEEL_SIZE()%></span>
                                     </div>
                                     </div>
                                     </div>
								     </div>
								    
								    
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse5">
                                     <h4 class="panel-title">Dimensions</h4>
                                     </a>
                                     </div>
                                     <div id="collapse5" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Length :</span>
                                     <span class="two"><%=ac.getLENGTH()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Width :</span>
                                     <span class="two"><%=ac.getWIDTH()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Height :</span>
                                     <span class="two"><%=ac.getHEIGHT() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Wheel base :</span>
                                     <span class="two"><%=ac.getWHEEL_BASE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Ground Clearance :</span>
                                     <span class="two"><%=ac.getGROUND_CLEARANCE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Boot Space :</span>
                                     <span class="two"><%=ac.getBOOT_SPACE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Krab Weight :</span>
                                     <span class="two"><%=ac.getKRAB_WEIGHT()%></span>
                                     </div>
                                     
                                     </div>
                                     </div>
								     </div>
								     
								    
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse6">
                                     <h4 class="panel-title">Suspensions </h4>
                                     </a>
                                     </div>
                                     <div id="collapse6" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Front Suspension :</span>
                                     <span class="two"><%=ac.getFRONT_SUSPENSION()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Rear Suspension :</span>
                                     <span class="two"><%=ac.getREAR_SUSPENSION() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Steering Type :</span>
                                     <span class="two"><%=ac.getSTEERING_TYPE()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Minimum Turning Radius(Wheel) :</span>
                                     <span class="two"><%=ac.getTURNING_RADIONS()%></span>
                                     </div>
                                     
                                     </div>
                                     </div>
								     </div>
								     
								    
								    <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse7">
                                     <h4 class="panel-title">Seating </h4>
                                     </a>
                                     </div>
                                     <div id="collapse7" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Seating Capacity :</span>
                                     <span class="two"><%=ac.getSEATING_CAPACITY()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Front Passenger Seat Adjustment :</span>
                                     <span class="two"><%=ac.getADJUST_PASSENGER_SEAT()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Folding Rear Seat :</span>
                                     <span class="two"><%=ac.getFOLDING_REAR_SEAT()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Split Rear Seat :</span>
                                     <span class="two"><%=ac.getSPLIT_RARE_SEAT()%></span>
                                     </div>
                                     
                                     </div>
                                     </div>
								     </div>
								    
								    
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse8">
                                     <h4 class="panel-title">Safety </h4>
                                     </a>
                                     </div>
                                     <div id="collapse8" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Air Bags :</span>
                                     <span class="two"><%=ac.getAIR_BAGS() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Seat Belt Warning :</span>
                                     <span class="two"><%=ac.getSEAT_BELT_WARNING()%></span>
                                     </div>

                                     </div>
                                     </div>
								     </div>
								     
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse9">
                                     <h4 class="panel-title">Lock & Security </h4> </a>
                                     </div>
                                     
                                     <div id="collapse9" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Engine Immobilizer :</span>
                                     <span class="two"><%=ac.getENGINE_IMMOBILIZER() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Central Locking System :</span>
                                     <span class="two"><%=ac.getCENTRAL_LOCKING_SYSTEM() %></span>
                                     </div>
                                     
                                      <div class="col-md-12 bi4">
                                     <span class="one">Child Locking System :</span>
                                     <span class="two"><%=ac.getCHILD_LOCKING_SYSTEM()%></span>
                                     </div>
                                     
                                     </div>
                                     </div>
								     </div>
								     
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse10">
                                     <h4 class="panel-title">Comfort </h4></a>
                                     </div>
                                     
                                     <div id="collapse10" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Power Steering :</span>
                                     <span class="two"><%=ac.getPOWER_STEERING() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Air Conditioner :</span>
                                     <span class="two"><%=ac.getAIR_CONDITIONER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Rear A/C :</span>
                                     <span class="two"><%=ac.getREAR_AC()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Steering Adjustment :</span>
                                     <span class="two"><%=ac.getSTEERING_ADJUSTMENT() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Keyless Start/Button Start :</span>
                                     <span class="two"><%=ac.getKEYLESS_START()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Parking Sensors :</span>
                                     <span class="two"><%=ac.getPARKING_SENSORS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Parking Assist :</span>
                                     <span class="two"><%=ac.getPARKING_ASSIST() %></span>
                                     </div>

                                     </div>
                                     </div>
								     </div>
								    
								    
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse11">
                                     <h4 class="panel-title">Lamp </h4></a>
                                     </div>
                                     
                                     <div id="collapse11" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Automatic Head Lamps :</span>
                                     <span class="two"><%=ac.getAUTOMATIC_HEAD_LAMPS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Fog Lamps :</span>
                                     <span class="two"><%=ac.getFOR_LAMPS()%></span>
                                     </div>
                                     
                                      <div class="col-md-12 bi4">
                                     <span class="one">Tail Lamps :</span>
                                     <span class="two"><%=ac.getTAIL_LAMPS()%></span>
                                     </div>
                                     
                                      <div class="col-md-12 bi4">
                                     <span class="one">Head Lamps :</span>
                                     <span class="two"><%=ac.getHEAD_LIGHT()%></span>
                                     </div>
                                     
                                      <div class="col-md-12 bi4">
                                     <span class="one">Height Light Adjuster :</span>
                                     <span class="two"><%=ac.getHEIGHT_ADJUSTER()%></span>
                                     </div>

                                     </div>
                                     </div>
								     </div>
								     
								     
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse12">
                                     <h4 class="panel-title">Doors & Windows </h4></a>
                                     </div>
                                     
                                     <div id="collapse12" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Power Windows :</span>
                                     <span class="two"><%=ac.getPOWER_WINDOWS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Rear Defogger :</span>
                                     <span class="two"><%=ac.getREAR_DETOGGER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Rear Wiper :</span>
                                     <span class="two"><%=ac.getREAR_WIPER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Rain Sensing Wiper :</span>
                                     <span class="two"><%=ac.getRAIN_SENSING_WIPER() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">No of Doors :</span>
                                     <span class="two"><%=ac.getNO_OF_DOORS() %></span>
                                     </div>
                                    
                                     </div>
                                     </div>
								     </div>
								     
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse13">
                                     <h4 class="panel-title">Instrumentation</h4></a>
                                     </div>
                                     
                                     <div id="collapse13" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Clock :</span>
                                     <span class="two"><%=ac.getCLOCK() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Low Fuel level Waring :</span>
                                     <span class="two"><%=ac.getLOW_FUEL_LEVEL_WARNING()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Door Close Waring :</span>
                                     <span class="two"><%=ac.getDOOR_CLOSE_WARNING()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Trip Meter :</span>
                                     <span class="two"><%=ac.getTRIP_METER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Gear Shift Indicator :</span>
                                     <span class="two"><%=ac.getGEAR_SHIFT_INDICATOR()%></span>
                                     </div>

                                     </div>
                                     </div>
								     </div>
								     
								     
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse14">
                                     <h4 class="panel-title">Entertainment  </h4></a>
                                     </div>
                                     
                                     <div id="collapse14" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Music System :</span>
                                     <span class="two"><%=ac.getMUSIC_SYSTEM()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Display :</span>
                                     <span class="two"><%=ac.getDISPLAY()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Display Screen for Rear Passengers :</span>
                                     <span class="two"><%=ac.getDISPLAY_SCREEN_REAR_PASSENGERS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">GPS Navigation System :</span>
                                     <span class="two"><%=ac.getGPS_NAVIGATION_SYSTEM()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">USB compatibility :</span>
                                     <span class="two"><%=ac.getUSB_COMPATIBILITY()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Speakers :</span>
                                     <span class="two"><%=ac.getSPEAKERS()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">CD Player  :</span>
                                     <span class="two"><%=ac.getCD_PLAYER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">MP3 Player  :</span>
                                     <span class="two"><%=ac.getMP3_PLAYER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">FM/AM Radio :</span>
                                     <span class="two"><%=ac.getFM_RADIO()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">DVD Player :</span>
                                     <span class="two"><%=ac.getDVD_PLAYER()%></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">BlueTooth Compatibility :</span>
                                     <span class="two"><%=ac.getBLUETOOTH() %></span>
                                     </div>

                                     </div>
                                     </div>
								     </div> 
								     
								     
								     <div class="panel panel-default">
                                     <div class="panel-heading">
                                     <a class="bi3" data-toggle="collapse" data-parent="#accordion" href="#collapse15">
                                     <h4 class="panel-title">Warranty </h4></a>
                                     </div>
                                     
                                     <div id="collapse15" class="panel-collapse collapse">
                                     <div class="panel-body">
                                     <div class="col-md-12 bi4">
                                     <span class="one">Warranty (Years) :</span>
                                     <span class="two"><%=ac.getWARRANTY_YEAR() %></span>
                                     </div>
                                     
                                     <div class="col-md-12 bi4">
                                     <span class="one">Warranty (Kms) :</span>
                                     <span class="two"><%=ac.getWARRANTY_KMS() %></span>
                                     </div>

                                     </div>
                                     </div>
								     </div> 
								    
								    </div> 
								    </div>
	                   			    </div>
	                   			    </div>
</body>
</html>