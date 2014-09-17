<Ni xmlns="http://tempuri.org/ni.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema_instance">
  <Command name="PCPortal.Module.newPC.GetPCategory" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetCategory]]>
    </Content>
    <String xmlns="" name="@P_ID" Size="1000"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.GetBrand" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetBrand]]>
    </Content>
    <String xmlns="" name="@P_CATEGORYSN" Size="50"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCustomer" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetCustomer]]>
    </Content>
    <String xmlns="" name="@P_BANKCARD" Size="25"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCustomer2" type="Text">
    <Content xmlns="">
      <![CDATA[
        SELECT ID ,IFNULL(CusName,'') as CUSNAME,IFNULL(CusSex,'') as CUSEX,MobilePhone as MOBILE
        from T_Customer where  BankCard=?P_BANKCARD;
        SELECT SendAddress as SENDADDRESS FROM T_CustomerAddress where BankCard=?P_BANKCARD;]]>
    </Content>
    <String xmlns="" name="@P_BANKCARD" Size="25"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.GetProductDetailsNew" type="Text">
    <Content xmlns="">
      <![CDATA[
      CALL sp_GetProduct_Attr_Gallery_New(?ProductSN,'000000005'); 
      SELECT b.ProductSN
         , b.GoodsSN
         , b.GoodsAttr
         , c.Attr
         , d.AttrName
         , c.AttrValue
         , c.ID
      FROM
        T_Goods b INNER JOIN T_ProductAttr c
      ON b.ProductSN = ?ProductSN AND b.ProductSN = c.ProductSN AND locate(concat(',', c.ID, ','), concat(',', b.GoodsAttr, ',')) > 0
      INNER JOIN T_Attribute d
      ON c.Attr = d.ID
      GROUP BY
        b.ProductSN
      , b.GoodsSN
      , c.Attr
      , d.AttrName
      , c.AttrValue
      ORDER BY
        c.ID;
     ]]>
    </Content>
    <String xmlns="" name="@ProductSN" Size="50"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.GetVendorRecommends" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetVendorRecommends]]>
    </Content>
    <String xmlns="" name="@V_StoreSN" Size="50"></String>
    <String xmlns="" name="@V_TerminalSN" Size="50"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.GetLogo" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetTerminalLogo]]>
    </Content>
    <String xmlns="" name="@T_TerminalSN" Size="50"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.ShopCardPay" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_VerifyCardPassAndAmount]]>
    </Content>
    <String xmlns="" name="@V_CardNo" Size="1000"></String>
  </Command>
  <Command name="PCPortal.Module.newPC.GetTagAndOrderByValue" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetTagAndOrderByValue]]>
    </Content>
  </Command>
  <Command name="PCPortal.Module.newPC.GetServerDateTime" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetServerTime]]>
    </Content>
  </Command>
  <Command name="PCPortal.Module.newPC.GetProductListV1" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_Web_GetProductList]]>
    </Content>
    <String xmlns="" name="@P_StoreSN" Size="50"></String>
    <String xmlns="" name="@P_CategorySN" Size="50"></String>
    <String xmlns="" name="@P_BrandSN" Size="50"></String>
    <String xmlns="" name="@P_ProductName" Size="50"></String>
    <String xmlns="" name="@P_SNCode" Size="50"></String>
    <String xmlns="" name="@P_SectionSN" Size="50"></String>
    <String xmlns="" name="@P_PriceRange" Size="50"></String>
    <String xmlns="" name="@P_OrderByName" Size="50"></String>
    <String xmlns="" name="@P_OrderByValue" Size="50"></String>
    <Int32 xmlns="" name="@P_Sort" />
    <Int32 xmlns="" name="@P_CurrPage" />
    <Int32 xmlns="" name="@P_PageCount" />
  </Command>
  <Command name="PCPortal.Module.newPC.GetRelationProductListV1" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetRelationProductListV1]]>
    </Content>
    <String xmlns="" name="@P_ProductSN" Size="50"></String>
    <String xmlns="" name="@P_StoreSN" Size="50"/>
  </Command>
  <Command name="PCPortal.Module.newPC.ComputeProductPay" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_ComputeProductPay]]>
    </Content>
    <String xmlns="" name="@P_ProductSN" Size="256"></String>
    <Int32 xmlns="" name="@IsIn" ParameterDirection="Output"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetPayNumber" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetPayNumber]]>
    </Content>
    <Decimal xmlns="" name="@V_TotalFare"/>
    <String xmlns="" name="@V_TerminalSN" Size="128"/>
  </Command>
  <Command name="PCPortal.Module.newPC.SearchInfo" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_GetSpringActivityStoreSN]]>
    </Content>
    <String xmlns="" name="@S_StoreSN" Size="256"></String>
    <Int32 xmlns="" name="@IsIn" ParameterDirection="Output"/>
  </Command>
  <Command name="PCPortal.Module.newPC.PageCommand" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_PageCommand]]>
    </Content>
    <String xmlns="" name="@columnss" Size="4000"/>
    <String xmlns="" name="@tablename" Size="4000"/>
    <Int32 xmlns="" name="@PageSize"/>
    <String xmlns="" name="@StrWhere" Size="500"/>
    <String xmlns="" name="@Order_Filed" Size="500"/>
    <Int32 xmlns="" name="@OrderType" Size="4000"/>
    <Int32 xmlns="" name="@CurrentPageCount"/>
    <String xmlns="" name="@OrderString" Size="500"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCatalog" type="Text">
    <Content xmlns="">
      <![CDATA[
        SELECT *
          FROM
            T_Category
          WHERE
            CategoryLevel IN (1, 2)
          ORDER BY
            CategorySN;
      ]]>
    </Content>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCatalog2" type="Text">
    <Content xmlns="">
      <![CDATA[
        SELECT *
          FROM
            T_Category
          WHERE
            CategoryLevel IN (3) and ParentKey = ?CategorySN
          ORDER BY
            CategorySN;
      ]]>
    </Content>
    <String xmlns="" name="@CategorySN"/>
  </Command>
  <!--获取所有匹配的商品-->
  <Command name="PCPortal.Module.newPC.GetProduct" type="Text">
    <Content xmlns="">
      <![CDATA[
          CALL sp_Web_GetProductList('000000005',ifnull(?cn,''), '',ifnull(?name,'') , '','','','CategorySN', '', '', (?page/?rows)+1, ?rows);
    ]]>
    </Content>
    <Int32 xmlns="" name="@page"/>
    <Int32 xmlns="" name="@rows"/>
    <String xmlns="" name="@cn"/>
    <String xmlns="" name="@name"/>
  </Command>


  <!--获取商品的品牌的logo-->
  <Command name="PCPortal.Module.newPC.GetBrandImg" type="Text">
    <Content xmlns="">
      <![CDATA[SELECT *
                FROM  T_Brand where BrandSN = ?sn
        ]]>
    </Content>
    <String xmlns="" name="@sn"/>
  </Command>
  <!--获取商品所在的地址-->
  <Command name="PCPortal.Module.newPC.GetProductAddr" type="Text">
    <Content xmlns="">
      <![CDATA[SELECT c.DisplayName as DISPLAYNAME
                      , c.Address as ADDRESS
                      , a.ProductSN as PRODUCTSN
               FROM
                T_WareProduct a
                INNER JOIN T_WareHouse b
                ON a.ProductSN = ?psn AND a.InventoryNum > 0 AND a.WareHouseID = b.ID
                INNER JOIN T_Store c
                ON c.WareID = b.ID
                order by a.InventoryNum,a.AvailableNum
                limit 1;
        ]]>
    </Content>
    <String xmlns="" name="@psn"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetShopCard" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_Web_GetShopCard]]>
    </Content>
    <String xmlns="" name="@PIDS"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCardIndex" type="Text">
    <Content xmlns="">
      <![CDATA[select *,DATE_FORMAT(ExpireTime,'%Y-%m-%d') as 'FExpireTime' from T_ShopCard where ExpireTime>=now() and (CardNO=?CardNo or CardIndex = ?CardNo);]]>
    </Content>
    <String xmlns="" name="@CardNo"/>
  </Command>
  <!--IN P_TerminalSN VARCHAR(50), IN P_CusName VARCHAR(50), IN P_Mobile VARCHAR(50), IN P_SendAddress VARCHAR(150), IN P_VerifyCode VARCHAR(50), IN P_CardNum VARCHAR(50), IN P_PaymentMode INT, IN P_DeliveryMethod INT, IN P_AssistPayment INT, IN P_OrderItemNum INT, IN P_AttrStr TEXT, IN P_AttrValueStr TEXT, IN P_GoodSNStr TEXT, IN P_ProductSNStr TEXT, IN P_NumberStr TEXT, IN P_PriceStr TEXT, IN P_ShipTypeStr TEXT, IN P_Discount TEXT, IN P_Pass VARCHAR(50), OUT P_Ret INT-->
  <Command name="PCPortal.Module.newPC.SubShopCard" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_InsertWebOrder]]>
    </Content>
    <String xmlns="" name="@P_TerminalSN" DefaultValue="000000005"/>
    <String xmlns="" name="@P_CusName"/>
    <String xmlns="" name="@P_Mobile"/>
    <String xmlns="" name="@P_SendAddress"/>
    <String xmlns="" name="@P_VerifyCode"/>
    <String xmlns="" name="@P_CardNum"/>
    <Int32 xmlns="" name="@P_PaymentMode" DefaultValue="2"/>
    <Int32 xmlns="" name="@P_DeliveryMethod"/>
    <String xmlns="" name="@P_AssistPayment" DefaultValue=",0"/>
    <Int32 xmlns="" name="@P_OrderItemNum"/>
    <String xmlns="" name="@P_AttrStr" DefaultValue=""/>
    <String xmlns="" name="@P_AttrValueStr" DefaultValue =""/>
    <String xmlns="" name="@P_GoodSNStr" DefaultValue=""/>
    <String xmlns="" name="@P_ProductSNStr"/>
    <String xmlns="" name="@P_NumberStr"/>
    <String xmlns="" name="@P_PriceStr"/>
    <String xmlns="" name="@P_ShipTypeStr"/>
    <String xmlns="" name="@P_Discount"/>
    <String xmlns="" name="@P_Pass"/>
    <String xmlns="" name="@P_Price"/>
    <Int32 xmlns="" name="@P_MUserID"/>
    <Int32 xmlns="" name="@P_MPossID"/>
    <Int32 xmlns="" name="@P_Ret" ParameterDirection="Output"/>
  </Command>
  <Command name="PCPortal.Module.newPC.UpdateOrderPayStatus" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_UpdateOrderPayStatusV1]]>
    </Content>
    <String xmlns="" name="@P_VerifyCode"/>
    <Int32 xmlns="" name="@P_PayStatus"/>
    <Int32 xmlns="" name="@P_OUT" ParameterDirection="Output"/>
  </Command>
  <!--//////////////////鼠标移动到商品图片上时///////////////////////-->
  <Command name="PCPortal.Module.newPC.GetProductHover" type="Text">
    <Content xmlns="">
      <![CDATA[                 
        SELECT * FROM  T_Brand where BrandSN = ?sn;
        
        SELECT c.DisplayName as DISPLAYNAME
              , c.Address as ADDRESS
              , a.ProductSN as PRODUCTSN
        FROM
        T_WareProduct a
        INNER JOIN T_WareHouse b
        ON a.ProductSN = ?psn AND a.InventoryNum > 0 AND a.WareHouseID = b.ID
        INNER JOIN T_Store c
        ON c.WareID = b.ID
        order by a.InventoryNum,a.AvailableNum
        limit 2; 
        
        SELECT c.Attr
             , d.AttrName
             , c.AttrValue
             ,c.ID
        FROM T_Goods b INNER JOIN T_ProductAttr c        
        ON b.ProductSN = ?psn and b.ProductSN = c.ProductSN AND locate(concat(',',c.ID,','),concat(',',b.GoodsAttr,','))>0
        INNER JOIN T_Attribute d
        ON c.Attr = d.ID
          GROUP BY b.ProductSN,c.Attr,d.AttrName,c.AttrValue
          ORDER by c.Attr,c.ID;  
        ]]>
    </Content>
    <String xmlns="" name="@sn"/>
    <String xmlns="" name="@psn"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetOrder" type="Text">
    <Content xmlns="">
      <![CDATA[
              SELECT oa.*
                   , group_concat(oa.ProductSN) as 'PIDS'
                   , group_concat(oa.GoodsSN) as 'GIDS'
                   , group_concat(b.ShortName) as 'PNS'
                   , group_concat(b.imgpath) as 'IMGS'
              FROM (
                select ia.*,ib.ProductSN,ib.GoodsSN from (
                SELECT *
                FROM
                  T_Order
                WHERE
                  bankCard = ?card
                UNION
                SELECT a.*
                FROM
                  T_Order a
                INNER JOIN T_MUserOrder b
                ON b.MiniPosID = ?MiniPosID AND a.VerifyCode = b.VerifyCode
             ) ia inner join T_OrderDetail ib
                on ia.OrderSN = ib.OrderSN and
                (?mon = -99 or (?mon != 99 and ia.AddTime> DATE_SUB(now(), INTERVAL ?mon MONTH))) and
                (?state = -99 or (?state != 99 and ia.ShippingStatus=?state)) and
                (?OrderSN = '-99' or (?OrderSN != '-99' and (ia.OrderSN=?OrderSN or ia.VerifyCode = ?OrderSN or ib.SNCode = ?OrderSN or ib.ProductName like concat('%',?OrderSN, '%'))))
              order by AddTime desc) oa
            INNER JOIN T_Product b
            ON oa.ProductSN = b.ProductSN
            GROUP BY
              OrderSN
            Order by oa.AddTime desc limit ?page,?rows;
              select count(distinct ia.OrderSN) from (SELECT *
                FROM
                  T_Order
                WHERE
                  bankCard = ?card
                UNION
                SELECT a.*
                FROM
                  T_Order a
                INNER JOIN T_MUserOrder b
                ON b.MiniPosID = ?MiniPosID AND a.VerifyCode = b.VerifyCode
             ) ia inner join T_OrderDetail ib
                on ia.OrderSN = ib.OrderSN and ?page = 0 and
                (?mon = -99 or (?mon != 99 and ia.AddTime> DATE_SUB(now(), INTERVAL ?mon MONTH))) and
                (?state = -99 or (?state != 99 and ia.ShippingStatus=?state)) and
                (?OrderSN = '-99' or (?OrderSN != '-99' and (ia.OrderSN=?OrderSN or ia.VerifyCode = ?OrderSN or ib.SNCode = ?OrderSN or ib.ProductName like concat('%',?OrderSN, '%'))));
        ]]>
    </Content>
    <Int32 xmlns="" name="@page"/>
    <Int32 xmlns="" name="@rows"/>
    <String xmlns="" name="@card"/>
    <String xmlns="" name="@MiniPosID"/>
    <Int32 xmlns="" name="@mon"/>
    <Int32 xmlns="" name="@state"/>
    <String xmlns="" name="@OrderSN"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCardLog" type="Text">
    <Content xmlns="">
      <![CDATA[
              SELECT *
            FROM
              T_ManualDepositInfo
            WHERE
              CardNumber = ?card order by CreateTime desc limit ?page,?rows;
            select count(*) from T_ManualDepositInfo where CardNumber = ?card and ?page = 0;
        ]]>
    </Content>
    <Int32 xmlns="" name="@page"/>
    <Int32 xmlns="" name="@rows"/>
    <String xmlns="" name="@card"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetOrderDetail" type="Text">
    <Content xmlns="">
      <![CDATA[
          SELECT a.*,b.ImgPath
          FROM
          T_OrderDetail a inner join T_Product b
          on a.OrderSN = ?orderSN and a.ProductSN = b.ProductSN
        ]]>
    </Content>
    <String xmlns="" name="@orderSN"/>
  </Command>
  <Command name="PCPortal.Module.newPC.SubCharge" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_SubmitDepositOrder]]>
    </Content>
    <String xmlns="" name="@P_TerminalSN" DefaultValue="000000005"/>
    <String xmlns="" name="@P_DepositAmount"/>
    <Decimal xmlns="" name="@P_PayableAmount"/>
    <Single xmlns="" name="@P_Discount"/>
    <Decimal xmlns="" name="@P_ActualMount"/>
    <Int32 xmlns="" name="@P_PaymentMethod"/>
    <String xmlns="" name="@P_PaymentAddr"/>
    <Int32 xmlns="" name="@P_FromAccountType"/>
    <String xmlns="" name="@P_FromAccountCode"/>
    <Decimal xmlns="" name="@P_FromAmount"/>
    <Int32 xmlns="" name="@P_ToAccountType"/>
    <String xmlns="" name="@P_ToAccountCode"/>
    <Decimal xmlns="" name="@P_ToAmount"/>
    <String xmlns="" name="@P_OrderSn" ParameterDirection="Output"/>
  </Command>
  <Command name="PCPortal.Module.newPC.SubCharge2" type="Text">
    <Content xmlns="">
      <![CDATA[
        INSERT INTO T_MUserOrder (MUserID, MiniPosID, CardIndex, VerifyCode, OrderSN) VALUES (?P_MUserID,?P_MPossID,?P_FromAccountCode,NULL,?P_OrderSn);
    ]]></Content>
    <String xmlns="" name="@P_FromAccountCode"/>
    <Int32 xmlns="" name="@P_MUserID"/>
    <Int32 xmlns="" name="@P_MPossID"/>
    <String xmlns="" name="@P_OrderSn"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetUser" type="Text">
    <Content xmlns="">
      <![CDATA[
     SELECT c.ID
     ,c.UserName
     ,c.Sex
     ,c.Mobile
     ,c.Email
     ,c.IsMarry
     ,c.Company
     ,c.Job
     ,c.Address
     ,c.PostCode
     ,c.TelPhone
     ,c.IsRecive
     ,c.IDType
     ,c.IDNo
     ,c.CardNum
     ,c.Country
     ,c.Birthday
     ,c.UpdateTime
     ,c.AddTime,d.CardIndex,a.ID as MiniPosID,a.MType,a.Number
      FROM
        T_MiniPos a
      INNER JOIN T_MUserPoss b
      ON a.Number = ?PossNumber AND a.ID = b.MiniPosID and b.State = 1
      INNER JOIN T_MUser c
      ON b.MUserID = c.ID
      INNER JOIN T_MUserCard d
      ON b.MUserID = d.MUserID AND d.IsDefault = TRUE;
    ]]>
    </Content>
    <String xmlns="" name="@PossNumber"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCards" type="Text">
    <Content xmlns="">
      <![CDATA[
        SELECT group_concat(CardIndex) as 'IDS'
        FROM
          T_MUserCard
        WHERE
          MUserID = ?MUserID group by MUserID;]]>
    </Content>
    <Int32 xmlns="" name="@MUserID"/>
  </Command>
  <Command name="PCPortal.Module.newPC.GetCard" type="Text">
    <Content xmlns="">
      <![CDATA[
        SELECT *
        FROM
          T_MUserCard
        WHERE
          MUserID = ?MUserID Order by IsDefault desc,ID asc;]]>
    </Content>
    <Int32 xmlns="" name="@MUserID"/>
  </Command>
  <Command name="PCPortal.Module.newPC.addCard" type="Text">
    <Content xmlns="">
      <![CDATA[
        INSERT INTO T_MUserCard (MUserID, CardIndex, CType, isDefault) VALUE (?MUserID,?CardIndex,?CType,0);]]>
    </Content>
    <Int32 xmlns="" name="@MUserID"/>
    <String xmlns="" name="@CardIndex"/>
    <Int32 xmlns="" name="@CType"/>
  </Command>
  <Command name="PCPortal.Module.newPC.changeCard" type="Text">
    <Content xmlns="">
      <![CDATA[
        update T_MUserCard set CardIndex = ?CardIndex where ID = (select ID from T_MUserCard where ID = ?MUserID order by ID desc limit 1);]]>
    </Content>
    <Int32 xmlns="" name="@MUserID"/>
    <String xmlns="" name="@CardIndex"/>
  </Command>
  <Command name="PCPortal.Module.newPC.changePwd" type="Text">
    <Content xmlns="">
      <![CDATA[      
        select 1 as SUCCESS FROM T_MUser WHERE ID = ?MUserID and PWD = ?OPWD;        
        select 1 as ERROR FROM T_MUser WHERE ID = ?MUserID and PWD != ?OPWD;
        update T_MUser set PWD = ?PWD where ID = ?MUserID and PWD = ?OPWD;
        ]]>
    </Content>
    <Int32 xmlns="" name="@MUserID"/>
    <String xmlns="" name="@PWD"/>
    <String xmlns="" name="@OPWD"/>
  </Command>
  <Command name="PCPortal.Module.newPC.delCard" type="Text">
    <Content xmlns="">
      <![CDATA[
        delete from T_MUserCard where MUserID = ?MUserID and CardIndex = ?CardIndex and isDefault = 0;
        SELECT *
        FROM
          T_MUserCard
        WHERE
          MUserID = ?MUserID;
        ]]>
    </Content>
    <Int32 xmlns="" name="@MUserID"/>
    <String xmlns="" name="@CardIndex"/>
  </Command>
  <Command name="PCPortal.Module.newPC.SubUser" type="Text">
    <Content xmlns="">
      <![CDATA[
        update T_MUser set Mobile=?Mobile,Email=?Email where ID = ?MUserID;
        ]]>
    </Content>
    <Int32 xmlns="" name="@MUserID"/>
    <String xmlns="" name="@Mobile"/>
    <String xmlns="" name="@Email"/>
  </Command>
  <Command name="PCPortal.Module.newPC.Login" type="Text">
    <Content xmlns="">
      <![CDATA[
      SELECT c.ID
     ,c.UserName
     ,c.Sex
     ,c.Mobile
     ,c.Email
     ,c.IsMarry
     ,c.Company
     ,c.Job
     ,c.Address
     ,c.PostCode
     ,c.TelPhone
     ,c.IsRecive
     ,c.IDType
     ,c.IDNo
     ,c.CardNum
     ,c.Country
     ,c.Birthday
     ,c.UpdateTime
     ,c.AddTime,d.CardIndex,a.ID as MiniPosID,a.MType,a.Number
      FROM
        T_MUser c INNER JOIN T_MUserPoss b
      ON (c.ID = ?UserID or c.UserName = ?UserID) and PWD = ?PWD and  b.MUserID = c.ID and b.State = 1
      INNER JOIN T_MiniPos a      
      ON a.ID = b.MiniPosID
      INNER JOIN T_MUserCard d
      ON b.MUserID = d.MUserID AND d.IsDefault = TRUE;      
    ]]>
    </Content>
    <String xmlns="" name="@UserID"/>
    <String xmlns="" name="@PWD"/>
  </Command>
  <Command name="PCPortal.Module.newPC.Regist" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[sp_RegistMUser]]>
    </Content>
    <String xmlns="" name="@P_UserName"/>
    <String xmlns="" name="@P_PWD"/>
    <String xmlns="" name="@P_mobile"/>
    <String xmlns="" name="@P_email"/>
    <String xmlns="" name="@P_poss"/>
    <String xmlns="" name="@P_Card"/>
  </Command>
  <Command name="PCPortal.Module.newPC.UpdateDepositOrderStatus" type="Text">
    <Content xmlns="">
      <![CDATA[
      CALL sp_UpdateDepositOrderStatus(?P_OrderSn);
      CALL sp_InsertT_ManualDepositInfoEntity(?CardNumber,'99999', 'newPC', ?DepositAmount, concat('000000005-',?P_OrderSn), 5);
      select *,DATE_FORMAT(ExpireTime,'%Y-%m-%d') as 'FExpireTime' from T_ShopCard where ExpireTime>=now() and (CardNO=?CardNumber or CardIndex = ?CardNumber);
    ]]>
    </Content>
    <String xmlns="" name="@CardNumber"/>
    <String xmlns="" name="@DepositAmount"/>
    <String xmlns="" name="@P_OrderSn"/>
  </Command>
  <Command name="PCPortal.Module.newPC.SaveSession" type="Text">
    <Content xmlns="">
      <![CDATA[
          delete from T_MSession where Session = ?SessionID;
          INSERT INTO T_MSession (Session,Data,AddTime) VALUES (?SessionID,?data,now());
        ]]>
    </Content>
    <String xmlns="" name="@SessionID"/>
    <String xmlns="" name="@data"/>
  </Command>
  <Command name="PCPortal.Module.newPC.LoadSession" type="Text">
    <Content xmlns="">
      <![CDATA[
          select Data from T_MSession where Session = ?SessionID order by AddTime desc limit 1;
        ]]>
    </Content>
    <String xmlns="" name="@SessionID"/>
  </Command>
  <Command name="PCPortal.Module.newPC.ClearSession" type="Text">
    <Content xmlns="">
      <![CDATA[
          delete from T_MSession where Session = ?SessionID;
        ]]>
    </Content>
    <String xmlns="" name="@SessionID"/>
  </Command>
  <!--新分页备份算法 默认网店门店号 000000005-->
  <Command name="PCPortal.Module.newPC.GetProduct1" type="Text">
    <Content xmlns="">
      <![CDATA[SELECT *
                FROM  T_Product 
                where Status = 1 
                  and (ifnull(?cn,'')='' or (ifnull(?cn,'')!='' and CategorySN like concat(?cn,'%')))
                  and (ifnull(?name,'')='' or (ifnull(?name,'')!='' and DisplayName like concat('%',?name,'%')))
                LIMIT ?page,?rows;                
                select count(*) from T_Product where ?page = 0 and Status = 1
                  and (ifnull(?cn,'')='' or (ifnull(?cn,'')!='' and CategorySN like concat(?cn,'%')))
                  and (ifnull(?name,'')='' or (ifnull(?name,'')!='' and DisplayName like concat('%',?name,'%')));
        ]]>
    </Content>
    <Int32 xmlns="" name="@page"/>
    <Int32 xmlns="" name="@rows"/>
    <String xmlns="" name="@cn"/>
    <String xmlns="" name="@name"/>
  </Command>
  <!-- 20130822 cqq-->
  <Command name="PCPortal.Module.newPC.getAD" type="StoredProcedure">
    <Content xmlns="">
      <![CDATA[AD_usp_getAD]]>
    </Content>
    <Int32 xmlns="" name="@P_ADSID"/>
    <String xmlns="" name="@P_Param"/>
    <String xmlns="" name="@P_SessionID"/>
    <Int32 xmlns="" name="@P_Num"/>
  </Command>

</Ni>