<Ni xmlns="http://tempuri.org/ni.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema_instance">
  <!--登录模块-->
  <Command name="VESHTest.Module.admin.Login" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[admin_USP_Login]]>
    </Content>
    <String xmlns="" name="@_UserName"/>
    <String xmlns="" name="@_Password"/>
    <Int32 xmlns="" name="@SystemType"/>
  </Command>
  <Command name="VESHTest.Module.admin.GetMenu" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[admin_USP_GetMenu]]>
    </Content>
    <String xmlns="" name="@_PerIDs"/>
    <String xmlns="" name="@_SystemID"/>
  </Command>
  <Command name="VESHTest.Module.admin.GetPermission" type="Text">
    <Content xmlns="">
      <![CDATA[      
        SELECT `Name`,ID
        FROM
        admin_Permission
        WHERE Delflag = 0 order by `Index`;
      ]]>
    </Content>
  </Command>
<Command name="VESHTest.Module.admin.QueryLawyer" type="Text">
    <Content xmlns="">
      <![CDATA[      
        SELECT `Name`,ID
        FROM
        admin_Permission
        WHERE Delflag = 0 order by `Index`;
      ]]>
    </Content>
  </Command>
  <Command name="VESHTest.Module.admin.GetConsults" type="Text">
    <Content xmlns="">
      <![CDATA[      
          SELECT *
          FROM
          my_Consulting 
          where DelFlag = 0 and AppliedStatus = ?AppliedStatus order by UpdateTime DESC,ID DESC limit ?page,?rows;          
          SELECT count(*)
          FROM
          my_Consulting 
          where DelFlag = 0 and AppliedStatus = ?AppliedStatus;
      ]]>
    </Content>
    <Int32 xmlns="" name="AppliedStatus"/>
    <Int32 xmlns="" name="page"/>
    <Int32 xmlns="" name="rows"/>
  </Command>
</Ni>
