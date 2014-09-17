<Ni xmlns="http://tempuri.org/ni.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema_instance">
  <!--登录模块-->
  <Command name="VESHTest.Module.login.getlogin" type="Text">
    <Content xmlns="">
      <![CDATA[SELECT * FROM my_user where Mail = ?Mail and PassWord = ?PassWord;]]>
    </Content>
    <String xmlns="" name="@Mail"/>
    <String xmlns="" name="@PassWord"/>
  </Command>

  <!--委托人注册模块-->
  <Command name="VESHTest.Module.reg.newureg" type="Text">
    <Content xmlns="">
      <![CDATA[
         INSERT INTO my_user(Password,Name,ID,Mail,address,bankName,bankNo)VALUES(?Password,?Name,?ID,?Mail,?address,?bankName,?bankNo);
      ]]>
    </Content>
    <String xmlns="" name="@Password"/>
    <String xmlns="" name="@Name"/>
    <String xmlns="" name="@ID"/>
    <String xmlns="" name="@Mail"/>
    <String xmlns="" name="@address"/>
    <String xmlns="" name="@bankName"/>
    <String xmlns="" name="@bankNo"/>
  </Command>
</Ni>
