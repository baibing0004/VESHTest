var uhome1 = {
    param: null,
    option: {},
    uhome1: function () {
        var _this = this;
        
        (function () {
           
            
        })();
        _this.init = function () {
            //初始化加载
            _this.loadTb();
            //初始化清空表单
            _this.restForm();
            //选择案件类型
            _this.changeCaseType();
            //上传申请资料
            _this.file();
        };
        _this.loadTb = function () {
            $("#container").append(FooterTemp());
        };
        _this.restForm = function () {
            $('#mycase')[0].reset();
            $(':input', '#mycase').not(':button, :submit, :reset, :hidden').val('').removeAttr('checked').removeAttr('selected');
        };
        _this.file = function () {
            VJ.tryC(function () {
                $('#application').diyUpload({
                    url: '../../Module/File/Upload.string?_a=1',
                    success: function (data) {
                        console.info(data);
                    },
                    error: function (err) {
                        alert("1")
                    },
                    buttonText: '选择上传文件',
                    chunked: true,
                    // 分片大小
                    chunkSize: 512 * 1024,
                    //最大上传的文件数量, 总文件大小,单个文件大小(单位字节);
                    fileNumLimit: 10,
                    fileSizeLimit: 500000 * 1024,
                    fileSingleSizeLimit: 50000 * 1024,
                    accept: {}
                });
            });
        };
        _this.changeCaseType = function () {
            $("#CaseType").change(function () {
                var index = $(this).val();
                switch (index) {
                    case '0':
                        $("#CaseRMB").val("民间借贷案：30%  单位(万元)");
                        break;
                    case '1':
                        $("#CaseRMB").val("买卖合同纠纷案：12%  单位(万元)");
                        break;
                    case '2':
                        $("#CaseRMB").val("交通事故案：12%  单位(万元)");
                        break;
                    case '3':
                        $("#CaseRMB").val("医疗纠纷案：20%  单位(万元)");
                        break;
                    case '4':
                        $("#CaseRMB").val("劳动工伤案：20%  单位(万元)");
                        break;
                    case '5':
                        $("#CaseRMB").val("其它经济案：30%  单位(万元)");
                        break;
                };
                $(".table-order-casetype li").removeClass("table-order-casetype-active").eq(index).addClass("table-order-casetype-active");
            });
        };
    },
    obj:null
}
$(function () {
    uhome1.obj = new uhome1.uhome1({});
    uhome1.obj.init();
});