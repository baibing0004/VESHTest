var Proposal = {
    param: null,
    option: {},
    Proposal: function () {
        var _this = this;
        
        (function () {
           
            
        })();
        _this.init = function () {
            //初始化加载
            _this.loadTb();
            
            
        };
        _this.loadTb = function () {
            $(".footer").append(WfooterTemp());
        };
    },
    obj:null
}
$(function () {
    Proposal.obj = new Proposal.Proposal({});
    Proposal.obj.init();
});