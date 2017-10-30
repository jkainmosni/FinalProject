<#import "/spring.ftl" as spring/>
<html>

<head>
  <title>Admin Page</title>
  <#include "master.ftl"/>
  <meta charset="UTF-8">
</head>

<body>
<@navigationbar.navigationbar tab="admin" />
<div class="container-fluid" style="margin-bottom: 70px">
  <#if repairList??>
    <h3 align="center">Retrieved Repairs:</h3>
    <div class="table-responsive">
      <table class="table table-striped">
        <#list repairList as repair>
          <thead>
          <tr>
            <th class="col-sm-1 "></th>
            <th class="col-sm-1">Id</th>
            <th class="col-sm-1">Cost</th>
            <th class="col-sm-2">Datetime</th>
            <th class="col-sm-1">Status</th>
            <th class="col-sm-1">Type</th>
            <th class="col-sm-4">Description</th>
            <th class="col-sm-1">Owner</th>
            <th class="col-sm-1"></th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td class="col-sm-1 "></td>
            <td class="col-sm-1">
              <p class="form-control-static">${repair.serviceid}</p>
            </td>
            <td class="col-sm-1">
              <p class="form-control-static">${repair.cost}</p>
            </td>
            <td class="col-sm-2">
              <p class="form-control-static">${repair.datetime}</p>
            </td>
            <td class="col-sm-1">
              <p class="form-control-static">${repair.status}</p>
            </td>
            <td class="col-sm-1">
              <p class="form-control-static">${repair.type}</p>
            </td>
            <td class="col-sm-4">
              <p class="form-control-static">${repair.freetext}</p>
            </td>
            <td class="col-sm-1">
              <p class="form-control-static">${repair.user.userid}</p>
            </td>
            <td class="col-sm-1"></td>
          </tr>
          </tbody>
        </#list>
      </table>
    </div>
    <#else>
      <h3 align="center">No repairs found</h3>
  </#if>
</div>
</body>

</html>