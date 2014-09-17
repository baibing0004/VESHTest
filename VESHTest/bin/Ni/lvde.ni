<Ni xmlns="http://tempuri.org/ni.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema_instance">
  <!--登录模块-->
  <Command name="VESHTest.Module.login.getlogin" type="Text">
    <Content xmlns="">
      <![CDATA[SELECT * FROM my_user where Mail = ?Mail and PassWord = ?PassWord;select ?Mail]]>
    </Content>
    <String xmlns="" name="@Mail"/>
    <String xmlns="" name="@PassWord"/>
  </Command>

  <!--委托人注册模块-->
  <Command name="VESHTest.Module.reg.newureg" type="Text">
    <Content xmlns="">
      <![CDATA[
         INSERT INTO my_user(Password,Name,IDCard,Mail,Address,bankAddress,bankNo)VALUES(?Password,?Name,?IDCard,?Mail,?Address,?bankAddress,?bankNo);
      ]]>
    </Content>
    <String xmlns="" name="@Password"/>
    <String xmlns="" name="@Name"/>
    <String xmlns="" name="@IDCard"/>
    <String xmlns="" name="@Mail"/>
    <String xmlns="" name="@Address"/>
    <String xmlns="" name="@bankAddress"/>
    <String xmlns="" name="@bankNo"/>
  </Command>
  <Command name="VESHTest.Module.reg.getCard" type="Text">
    <!--查询身份证-->
    <Content xmlns="">
      <![CDATA[
         SELECT if(EXISTS (SELECT * from my_User where IDCard = ?IDCard), 'false', 'true');
      ]]>
    </Content>
    <String xmlns="" name="@IDCard"/>
  </Command>
  <Command name="VESHTest.Module.reg.getMail" type="Text">
    <!--查询邮箱-->
    <Content xmlns="">
      <![CDATA[
         SELECT if(EXISTS (SELECT * from my_User where Mail = ?Mail), 'false', 'true');
      ]]>
    </Content>
    <String xmlns="" name="@Mail"/>
  </Command>

  <!--律师注册模块-->
  <Command name="VESHTest.Module.reg.newlowyerreg" type="Text">
    <!--律师注册-->
    <Content xmlns="">
      <![CDATA[
         set _ID = admin_USF_Guid();
         INSERT INTO my_lawoffice (ID,Name, Address,Desc) VALUES (_ID,?Name, ?Address,'');
         select _ID;
      ]]>
    </Content>
    <String xmlns="" name="@ID"/>
    <String xmlns="" name="@Name"/>
    <String xmlns="" name="@Address"/>
  </Command>
  <Command name="VESHTest.Module.reg.newlreg" type="Text">
    <Content xmlns="">
      <![CDATA[
         INSERT INTO my_lowyer (Password, Lname, lawyerpractice, ProviceCity, IDCard, Mail, Laddress, bankAddress, bankNo,lawofficeID) VALUES (?Password, ?Name, ?lawyerpractice,?ProviceCity, ?IDCard, ?Mail, ?Address, ?bankAddress, ?bankNo, ?lawofficeID);
      ]]>
    </Content>
    <String xmlns="" name="@Password"/>
    <String xmlns="" name="@Name"/>
    <String xmlns="" name="@lawyerpractice"/>
    <String xmlns="" name="@ProviceCity"/>
    <String xmlns="" name="@IDCard"/>
    <String xmlns="" name="@Mail"/>
    <String xmlns="" name="@Address"/>
    <String xmlns="" name="@bankAddress"/>
    <String xmlns="" name="@bankNo"/>
  <String xmlns="" name="@lawofficeID"/>
  </Command>
  <Command name="VESHTest.Module.reg.getlCard" type="Text">
    <!--查询身份证-->
    <Content xmlns="">
      <![CDATA[
         SELECT if(EXISTS (SELECT * from my_lowyer where IDCard = ?IDCard), 'false', 'true');
      ]]>
    </Content>
    <String xmlns="" name="@IDCard"/>
  </Command>
  <Command name="VESHTest.Module.reg.getlMail" type="Text">
    <!--查询邮箱-->
    <Content xmlns="">
      <![CDATA[
         SELECT if(EXISTS (SELECT * from my_lowyer where Mail = ?Mail), 'false', 'true');
      ]]>
    </Content>
    <String xmlns="" name="@Mail"/>
  </Command>
  <Command name="VESHTest.Module.login.UserLogin">
    <!--查询邮箱-->
    <Content xmlns="">
      <![CDATA[my_USP_UserLogin]]>
    </Content>
    <String xmlns="" name="_UserName"/>
    <String xmlns="" name="_Password"/>
  </Command>
  <Command name="VESHTest.Module.login.LawyerLogin">
    <!--查询邮箱-->
    <Content xmlns="">
      <![CDATA[my_USP_LawyerLogin]]>
    </Content>
    <String xmlns="" name="_UserName"/>
    <String xmlns="" name="_Password"/>
  </Command>
</Ni>
