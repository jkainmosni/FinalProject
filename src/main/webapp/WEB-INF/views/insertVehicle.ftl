<#import "/spring.ftl" as spring/>
<html>

<head>
    <title>Insert Owner Page</title>
    <#include "master.ftl"/>
    <meta charset="UTF-8">
</head>
<body>
<@navigationbar.navigationbar tab="admin" />
<div class="container">
    <form data-toggle="validator" role="form" name="insertVehicleForm" modelAttribute="insertVehicleForm" class="well form-horizontal" action="/admin/vehicle/insertVehicle " method="post" id="vehicle_form">
        <legend>
            <center>
                <h2><b>Vehicle Form</b></h2></center>
        </legend><br>
        <div class="form-group">
            <label class="col-md-4 control-label">Vehicle Model</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
                    <input name="model" placeholder="Model" class="form-control" type="text" pattern="[A-Za-z0-9.-]+" oninvalid="this.setCustomValidity('Required, please enter the model of vehicle.')" oninput="setCustomValidity('')" required>
                </div>
                <div class="help-block with-errors"></div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label">Vehicle Brand</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-th-large"></i></span>
                    <input name="brand" placeholder="Brand" class="form-control" type="text" pattern="[A-Za-z0-9.-]+" oninvalid="this.setCustomValidity('Required, please enter the brand of vehicle.')" oninput="setCustomValidity('')" required>
                </div>
                <div class="help-block with-errors"></div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label">Vehicle Year</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                    <input name="year" placeholder="Year" class="form-control" type="text" pattern="[0-9]{4}" oninvalid="this.setCustomValidity('Required, please enter the year of vehicle.')" oninput="setCustomValidity('')" required>
                </div>
                <div class="help-block with-errors"></div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label">Vehicle Color</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-th-list"></i></span>
                    <input name="color" placeholder="Color" class="form-control" type="text" oninvalid="this.setCustomValidity('Required, please enter the color of vehicle.')" oninput="setCustomValidity('')" required>
                </div>
                <div class="help-block with-errors"></div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label">Vehicle Plate</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i></span>
                    <input name="plate" placeholder="Plate, ex. ABC-1234" class="form-control" type="text" pattern="[A-Z]+[A-Z]+[A-Z]+[-]+[0-9]{4}$" oninvalid="this.setCustomValidity('Required, please enter the plate of vehicle.')" oninput="setCustomValidity('')" required>
                </div>
                <div class="help-block with-errors"></div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label">Owner</label>
            <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                    <input name="userid" placeholder="Owner's Id" class="form-control" type="text" pattern="[1-9]" oninvalid="this.setCustomValidity('Required, please enter a valid number.')" oninput="setCustomValidity('')" required>
                </div>
                <div class="help-block with-errors"></div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label"></label>
            <div class="col-md-4"><br>
                <button type="submit" class="btn btn-success btn-block">Submit</button>
            </div>
        </div>
    </form>
</div>
</body>

</html>