<#import "/spring.ftl" as spring/>
<html>

<head>
    <title>Search Vehicle Page</title>
    <#include "master.ftl"/>
    <meta charset="UTF-8">
</head>

<body>
<@navigationbar.navigationbar tab="admin" />
<div class="container-fluid" style="margin-bottom: 70px">
    <form role="search" name="searchVehicleForm" action="searchVehicle" method="post">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="input-group">
                    <input type="text" class="form-control input-lg" placeholder="search Vehicle by owner's SSN" name="ssn" id="ssn">
                    <div class="input-group-btn">
                        <button class="btn btn-info input-lg" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
        </br>
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="input-group">
                    <input type="text" class="form-control input-lg" placeholder="search Vehicle by Plate" name="plate" id="plate">
                    <div class="input-group-btn">
                        <button class="btn btn-info input-lg" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </form>

    <#if vehicleList??>
        <center>
            <h3><b>Retrieved Vehicles</b></h3></center>
        <div class="table-responsive">
            <table class="table table-striped">
                <#list vehicleList as vehicle>
                    <form id="searchVehicleResults" name="retrieveVehicleData" action="updateVehicle" method="post">
                        <thead>
                        <tr>
                            <th class="col-sm-1">Id</th>
                            <th class="col-sm-1">Model</th>
                            <th class="col-sm-2">Brand</th>
                            <th class="col-sm-1">Year</th>
                            <th class="col-sm-1">Color</th>
                            <th class="col-sm-4">Plate</th>
                            <th class="col-sm-1">Owner</th>
                            <th class="col-sm-1"></th>
                            <th class="col-sm-1"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="col-sm-1"><input class="form-control" type="text" name="id" value="${vehicle.id}" readonly/></td>
                            <td class="col-sm-1"><input class="form-control" type="text" name="model" value="${vehicle.model}" /></td>
                            <td class="col-sm-2"><input class="form-control" type="text" name="brand" value="${vehicle.brand}" /></td>
                            <td class="col-sm-1"><input class="form-control" type="text" name="year" value="${vehicle.year}" /></td>
                            <td class="col-sm-1"><input class="form-control" type="text" name="color" value="${vehicle.color}" /></td>
                            <td class="col-sm-2"><input class="form-control" type="text" name="plate" value="${vehicle.plate}" /></td>
                            <td class="col-sm-1"><input class="form-control" type="text" name="userid" value="${vehicle.user.userid}" /></td>
                            <td class="col-sm-1">
                                <input class="btn btn-md" id="update" type="submit" value="Update">
                            </td>
                            <td class="col-sm-1">
                                <input class="btn btn-danger btn-md" id="delete" type="submit" value="Delete">
                            </td>

                        </tr>
                        </tbody>
                    </form>
                </#list>
            </table>
        </div>
</div>
</#if>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
  $('#delete').click(function() {
    $('#searchVehicleResults').attr('action', 'deleteVehicle');
  });
</script>

</html>