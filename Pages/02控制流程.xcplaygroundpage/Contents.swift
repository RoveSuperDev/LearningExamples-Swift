import UIKit



enum HanleType : String {
    case Cancel = "cancel"
    case Delete = "delete"
}

var handleType : HanleType!

handleType = .Delete


if(handleType.rawValue.elementsEqual("cancel")){
    print("处理类型 取消")
}
