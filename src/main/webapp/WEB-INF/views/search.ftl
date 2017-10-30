<#import "/spring.ftl" as spring/>
<html>

<head>
    <title>Search Owner Page</title>
    <#include "master.ftl"/>
    <meta charset="UTF-8">
</head>

<body>
<@navigationbar.navigationbar tab="admin" />
<div class="container-fluid" style="margin-bottom: 70px">
    <form role="search" name="searchForm" action="search" method="post">
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <div class="input-group">
                    <input type="text" class="form-control input-lg" placeholder="search Owner by owner's Email" name="email" id="email">
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
                    <input type="text" class="form-control input-lg" placeholder="search Owner by owner's SSN" name="ssn" id="ssn">
                    <div class="input-group-btn">
                        <button class="btn btn-info input-lg" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </div>
            <div class="col-md-2"></div>
        </div>
    </form>

    <#if emailsorssns??>
        <center><h3><b>Retrieved Users</b></h3></center>
        <div class="table-responsive">
            <table class="table table-striped">
                <form id="searchResults" name="retrieveUserData" action="update" method="post">
                    <thead>
                    <tr>
                        <th>User Id</th>
                        <th>SSN</th>
                        <th>Password</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>User Type</th>
                        <th colspan="2">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list emailsorssns as emailsorssn>
                    <thead>
                    <tr>
                        <td class="col-sm-1"><input class="form-control" type="text" name="userid" value="${emailsorssn.userid}" readonly/></td>
                        <td class="col-sm-1"><input class="form-control" type="text" name="ssn" value="${emailsorssn.ssn}" /></td>
                        <td class="col-sm-2"><input class="form-control" type="text" name="password" value="${emailsorssn.password}" /></td>
                        <td class="col-sm-1"><input class="form-control" type="text" name="firstname" value="${emailsorssn.firstname}" /></td>
                        <td class="col-sm-1"><input class="form-control" type="text" name="lastname" value="${emailsorssn.lastname}" /></td>
                        <td class="col-sm-2"><input class="form-control" type="email" name="email" value="${emailsorssn.email}" /></td>
                        <td class="col-sm-1"><input class="form-control" type="text" name="address" value="${emailsorssn.address}" /></td>
                        <td class="col-sm-1">
                            <select class="form-control" name="typeofuser">
                                <option value="Pending"
                                <#if ("${emailsorssn.typeofuser}" == "ADMIN") > selected="selected"</#if>>ADMIN</option>
                                <option value="In Progress"
                                <#if ("${emailsorssn.typeofuser}" == "USER") > selected="selected"</#if>>USER</option>
                            </select>
                        </td>
                        <td class="col-sm-1">
                            <input class="btn btn-md" id="update" type="submit" value="Update">
                        </td>
                        <td class="col-sm-1">
                            <input class="btn btn-danger btn-md" id="delete" type="submit" value="Delete">
                        </td>
                    </tr>
                    </thead>
                    </#list>
                    </tbody>
                </form>
            </table>
        </div>
    </#if>
</div>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript">
  $('#delete').click(function() {
    $('#searchResults').attr('action', 'delete');
  });
</script>

</html>