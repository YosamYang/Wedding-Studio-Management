<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserDefined.aspx.cs" Inherits="UserDefined" %>

<%@ Register Src="WebUserControl/Left.ascx" TagName="Left" TagPrefix="uc1" %>
<%@ Register Src="~/WebUserControl/top.ascx" TagName="top" TagPrefix="cc1" %>
<%@ Register Src="~/WebUserControl/foot.ascx" TagName="foot" TagPrefix="cc2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>自定义商品</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script type="text/javascript" src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="css/css.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .white1 {
            color: #FFFFFF;
        }
    </style>
    <script type="text/javascript">
        var PriceSum = 0;
        var RealPriceSum = 0;
        var TypeCount = [];
        var placeObj = {
            101: "CDCJ",
            102: "HJCJ",
            103: "JSJD",
            104: "NGCD",
            105: "XGCJ",
            106: "YJCD",
            107: "CTHS",
            108: "duanHS",
            109: "RCHS",
            110: "refresh",
            111: "yuweiHS",
        }
        function btnShowSheYing_Click() {
            var name = document.getElementById("nameInfo").value;
            var price = document.getElementById("priceInfo").value;
            if (name == "" || name.length == 0) {
                alert("请填写套餐名！");
            } else if (price == "" || price.length == 0) {
                alert("未选取任何单品！");
            } else {
                window.open("http://localhost:63506/Shopping.aspx?name=" + name + "&&price=" + price + "&&time=" + new Date().getTime());
            }
        }
        function handlebtnClick(num) {
            Array.prototype.contains = function (item) {
                return RegExp(item).test(this);
            };
            if (!TypeCount.contains(placeObj[num])) {
                TypeCount.push(placeObj[num]);
                let x = document.getElementsByClassName(placeObj[num]);
                for (let i = 0; i < x.length; i++) {
                    x[i].style.backgroundColor = "#eee";
                }
                PriceSum = PriceSum + parseInt(document.getElementById(placeObj[num]).innerText);
                RealPriceSum = PriceSum - parseInt(PriceSum / 1000) * 100;
                document.getElementById("priceInfo").value = RealPriceSum;
            }
        }
        function handlebtnUnClick(num) {
            Array.prototype.contains = function (item) {
                return RegExp(item).test(this);
            };
            Array.prototype.remove = function (val) {
                var index = this.indexOf(val);
                if (index > -1) {
                    this.splice(index, 1);
                }
            };
            if (TypeCount.contains(placeObj[num])) {
                TypeCount.remove(placeObj[num]);
                let x = document.getElementsByClassName(placeObj[num]);
                for (let i = 0; i < x.length; i++) {
                    x[i].style.backgroundColor = "#fff";
                }
                PriceSum = PriceSum - parseInt(document.getElementById(placeObj[num]).innerText);
                RealPriceSum = PriceSum - parseInt(PriceSum / 1000) * 100;
                document.getElementById("priceInfo").value = RealPriceSum;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <cc1:top ID="top1" runat="server" />
        <table border="0" cellpadding="0" cellspacing="0" bgcolor="#fff" style="width: 80%; text-align: center; position: relative; left: 10%; top: 453px;">
            <tr>
                <td valign="top" style="width: 300px">
                    <table border="0" cellpadding="0"
                        cellspacing="0" style="width: 226px">
                        <tr>
                            <td class="lefttt1" style="width: 80%; font-size: 18px; background-color: #333; color: #ffffff; background-repeat: repeat-x; height: 28px;">频道导航</td>
                        </tr>
                        <tr>
                            <td align="left" valign="top" style="width: 299px; height: 107px;">&nbsp;<uc1:Left ID="Left2" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center" style="width: 299px; height: 15px;"></td>
                        </tr>
                    </table>
                </td>
                <td width="752" valign="top" style="height: 471px">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                            <td width="100%" style="height: 8px"></td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                        <%--<td width="19" style="height: 24px"><img src="images/aa-2_16.gif" width="19" height="24" alt="" /></td>
                                        <td bgcolor="#D8D8D8" class="red" style="height: 24px">&nbsp;&nbsp;&nbsp;所有商品展示</td>
                                        <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;所有商品展示</td>
                                        <td width="7" style="height: 24px"><img src="images/index_23.gif" width="7" height="24" alt="" /></td>--%>
                                        <td bgcolor="#333" class="red" style="height: 30px">&nbsp;&nbsp;&nbsp;&nbsp;所有商品展示</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <table align="center" cellpadding="0" cellspacing="0" style="width: 764px">
                        <tr>
                            <td colspan="3">
                                <div class="jumbotron">
                                    <h3>Step1: 选择心仪的拍摄场地!</h3>
                                    <p>The Choice Is Yours!</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="CDCJ">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/CDCJ.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="CDCJ">320</span></h3>
                                            <p>The Choice Is Yours!</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(101)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(101)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="HJCJ">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/HJCJ.jpg" alt="...">
                                        <div class="caption">
                                            <h3>海边场景 ￥<span id="HJCJ">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(102)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(102)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="JSJD">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/JSJD.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="JSJD">320</span></h3>
                                            <p>The Choice Is Yours!</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(103)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(103)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="NGCD">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/NGCD.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="NGCD">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(104)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(104)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="XGCJ">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/XGCJ.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="XGCJ">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(105)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(105)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="YJCD">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/YJCD.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="YJCD">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(106)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(106)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <div class="jumbotron">
                                    <h3>Step2: 选择适合您的婚纱!</h3>
                                    <p>...</p>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="CTHS">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/CTHS.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="CTHS">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(107)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(107)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="duanHS">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/duanHS.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="duanHS">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(108)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(108)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="RCHS">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/RCHS.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="RCHS">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(109)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(109)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="refresh">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/refresh.jpg" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="refresh">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(110)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(110)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                            <td class="yuweiHS">
                                <div class="col-sm-6 col-md-4" style="width: 360px; height: 360px">
                                    <div class="thumbnail">
                                        <img src="uploadfiles/yuweiHS.png" alt="...">
                                        <div class="caption">
                                            <h3>草原风光 ￥<span id="yuweiHS">320</span></h3>
                                            <p>...</p>
                                            <p>
                                                <input class="btn btn-primary" type="Button" name="Button" onclick="handlebtnClick(111)" value="确认选择" />
                                                <input class="btn btn-default" type="Button" name="Button" onclick="handlebtnUnClick(111)" value="取消" />
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <tr style="color: #000000">
                            <td colspan="3">
                                <div class="input-group" style="width: 100%">
                                    <input type="text" id="nameInfo" class="form-control" value="自定义婚纱摄影套餐一">
                                    <span class="input-group-addon" id="basic-addon2">请填写你的自定义标题</span>
                                </div>
                            </td>
                            <tr>
                        <tr style="color: #000000">
                            <td colspan="3" style="height: 50px">
                                <div class="input-group" style="width: 100%">
                                    <span class="input-group-addon">￥</span>
                                    <input type="text" id="priceInfo" class="form-control" value="">
                                    <span class="input-group-addon">自定义套餐满一千减一百</span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" style="text-align: center">
                                <input class="btn btn-default btn-lg" id="btnSSY" type="Button" name="Button" onclick="btnShowSheYing_Click()" value="确认订单" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <div style="width: 80%; left: 10%; position: relative; top: 458px; background-color: #fff;">
            <cc2:foot ID="foot2" runat="server" style="width: 100%" />
        </div>
    </form>
</body>
</html>
