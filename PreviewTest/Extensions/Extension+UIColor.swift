import UIKit

extension UIColor {
    /// RGB가 각각 `red`, `green`, `blue`이고 opacity는 `a`인 Color object 반환
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0,
                  green: CGFloat(green) / 255.0,
                  blue: CGFloat(blue) / 255.0,
                  alpha: a
        )
    }
}

extension UIColor {
    /// RGB가 `hex`, opacity는 1에 해당하는 Color object 반환
    convenience init(hex: Int) {
        self.init(
            red: (hex >> 16) & 0xff,
            green: (hex >> 8) & 0xff,
            blue: hex & 0xff
        )
    }

    convenience init(hexString: String) {
        var cString:String = hexString.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            self.init()
        } else {

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: CGFloat(1.0))

        }
    }
}

extension UIColor {
    /// RGB(0, 0, 0)
    class var black_000000: UIColor { return UIColor(hex: 0x000000)}
    /// RGB(34, 34, 34)
    class var black_222222: UIColor { return UIColor(hex: 0x222222)}
    /// RGB(70,70,70(
    class var black_464646: UIColor { return UIColor(hex: 0x464646)}
    /// RGB(74, 74, 74)
    class var black_4A4A4A: UIColor { return UIColor(hex: 0x4A4A4A)}
    /// RGB(84, 84, 84)
    class var black_545454: UIColor { return UIColor(hex: 0x545454)}
    /// RGB(255, 255, 255)
    class var white_FFFFFF: UIColor { return UIColor(hex: 0xffffff)}
    /// RGB(80, 120, 242)
    class var blue_5078F2: UIColor { return UIColor(hex: 0x5078f2)}
    /// RGB(242, 243, 255)
    class var blue_F2F3FF: UIColor { return UIColor(hex: 0xF2F3FF)}
    class var blue_F2F3F4: UIColor { return UIColor(hex: 0xF2F3F4)}
    /// RGB(0, 24, 255)
    class var blue_0018ff: UIColor { return UIColor(hex: 0x0018ff)}
    /// RGB(233, 233, 233)
    class var gray_E9E9E9: UIColor { return UIColor(hex: 0xE9E9E9)}
    /// RGB(245, 245, 245)
    class var gray_F5F5F5: UIColor { return UIColor(hex: 0xF5F5F5)}
    /// RGB(136,136,136)
    class var gray_888888: UIColor { return UIColor(hex: 0x888888)}
    /// RGB(230, 230, 230)
    class var gray_E6E6E6: UIColor { return UIColor(hex: 0xE6E6E6)}
    /// RGB(227, 227, 227)
    class var gray_E3E3E3: UIColor { return UIColor(hex: 0xE3E3E3)}
    /// RGB(128, 130, 136)
    class var gray_808288: UIColor { return UIColor(hex: 0x808288)}
    /// RGB(153,153,153)
    class var gray_999999: UIColor { return UIColor(hex: 0x999999)}
    /// RGB(102, 102, 102)
    class var gray_666666: UIColor { return UIColor(hex: 0x666666)}
    /// RGB(232, 236, 241)
    class var gray_E8ECF1: UIColor { return UIColor(hex: 0xE8ECF1)}
    /// RGB(211, 211, 211)
    class var gray_light: UIColor { return UIColor(hex: 0xD3D3D3)}
    /// RGB(253, 254, 253)
    class var offWhite: UIColor { return UIColor(hex: 0xFDFEFD)}

    /// RGB(216, 216, 216)
    class var gray_D8D8D8: UIColor { return UIColor(hex: 0xD8D8D8)}
    /// RGB(242, 242, 242)
    class var gray_F2F2F2: UIColor { return UIColor(hex: 0xF2F2F2)}
    /// RGB(187, 187, 187)
    class var gray_BBBBBB: UIColor { return UIColor(hex: 0xBBBBBB)}
    /// RGB(2, 136, 88)
    class var green_028858: UIColor { return UIColor(hex: 0x028858)}
    class var green_2EAB9B: UIColor { return UIColor(hex: 0x2EAB9B)}
    class var green_36A1AB: UIColor { return UIColor(hex: 0x36A1AB)}
    /// RGB(128,128,128)
    class var gray_808080: UIColor { return UIColor(hex: 0x808080)}
    /// RGB(252, 33, 55)
    class var red_FC2137: UIColor { return UIColor(hex: 0xFC2137)}
    /// RGB(255, 90, 65)
    class var red_retry: UIColor { return UIColor(hex: 0xFF5B41)}
    /// RGB(252, 22, 22)
    class var red_FC1616: UIColor { return UIColor(hex: 0xFC1616)}
    /// RGB(188,188,188)
    class var gray_BCBCBC: UIColor { return UIColor(hex: 0xBCBCBC)}
    /// RGB(177,177,177) , B1B1B1
    class var gray_B1B1B1: UIColor { return UIColor(hex: 0xB1B1B1)}//금융기관 선택 팝업 버튼 텍스트
    /// RGB(224, 224, 224) , E0E0E0
    class var gray_E0E0E0: UIColor { return UIColor(hex: 0xE0E0E0)}//금융기관 선택 라인
    /// RGB(55, 70, 255
    class var blue_3746FF: UIColor { return UIColor(hex: 0x3746FF)}
    /// RGB(225, 225, 225)
    class var gray_E1E1E1: UIColor { return UIColor(hex: 0xE1E1E1)}
    /// RGB(120, 120, 120)
    class var gray_787878: UIColor { return UIColor(hex: 0x787878)}
    /// RGB(222, 222, 222)
    class var gray_DEDEDE: UIColor { return UIColor(hex: 0xDEDEDE)}
    /// RGB(199, 199, 199)
    class var gray_C7C7C7: UIColor { return UIColor(hex: 0xC7C7C7)}
    /// RGB(238, 238, 238)
    class var gray_EEEEEE: UIColor { return UIColor(hex: 0xEEEEEE)}
    /// RGB(250,238,226)
    class var orange_FAEEE2: UIColor { return UIColor(hex: 0xFAEEE2)}
    /// RGB(255,136, 0)
    class var orange_FF8800: UIColor { return UIColor(hex: 0xFF8800)}
    /// RGB(255, 111, 0)
    class var orange_FF6F00: UIColor { return UIColor(hex: 0xFF6F00)}

    /// RGB(170, 188, 255)
    class var gray_aabcff: UIColor { return UIColor(hex: 0xaabcff)}
    /// RGB(217, 217, 217)
    class var gray_D9D9D9: UIColor { return UIColor(hex: 0xD9D9D9)}
    /// RGB(78, 254, 163)
    class var green_4EFEA2: UIColor { return UIColor(hex: 0x4EFEA2)}
    class var green_E6FAF8: UIColor { return UIColor(hex: 0xE6FAF8)}
    class var green_48C5B5: UIColor { return UIColor(hex: 0x48C5B5)}
    class var green_6DD1C4: UIColor { return UIColor(hex: 0x6DD1C4)}
    class var green_91DCD3: UIColor { return UIColor(hex: 0x91DCD3)}
    class var green_B6E8E1: UIColor { return UIColor(hex: 0xB6E8E1)}
    /// RGB(55, 70, 255)
    class var primary_blue: UIColor { return UIColor(hex: 0x3746ff)}

    class var yellow_ffd55e: UIColor { return UIColor(hex: 0xffd55e)}
    class var yellow_FFBE73: UIColor { return UIColor(hex: 0xFFBE73)}
    class var yellow_FFCB8F: UIColor { return UIColor(hex: 0xFFCB8F)}
    class var yellow_FFD8AB: UIColor { return UIColor(hex: 0xFFD8AB)}
    class var yellow_FFE5C7: UIColor { return UIColor(hex: 0xFFE5C7)}
    /// RGB(35, 29, 255)
    class var blue_231dff: UIColor { return UIColor(hex: 0x231dff)}

    class var blue_235BED: UIColor { return UIColor(hex: 0x235BED)}
    class var blue_4098EB: UIColor { return UIColor(hex: 0x4098EB)}
    class var blue_66ACEF: UIColor { return UIColor(hex: 0x66ACEF)}
    class var blue_8CC1F3: UIColor { return UIColor(hex: 0x8CC1F3)}
    class var blue_B2D6F7: UIColor { return UIColor(hex: 0xB2D6F7)}

    class var blue_556DFF: UIColor { return UIColor(hex: 0x556DFF)}
    /// RGB(114, 132, 255)
    class var blue_7284FF: UIColor { return UIColor(hex: 0x7284FF)}
    class var blue_4F7CEF: UIColor { return UIColor(hex: 0x4F7CEF)}
    /// RGB(155, 167, 255)
    class var blue_9BA7FF: UIColor { return UIColor(hex: 0x9BA7FF)}
    /// RGB(191, 199, 255)
    class var blue_BFC7FF: UIColor { return UIColor(hex: 0xBFC7FF)}
    /// RGB(217, 222, 255)
    class var blue_D9DEFF: UIColor { return UIColor(hex: 0xD9DEFF)}

    class var red_FC5C6C: UIColor { return UIColor(hex: 0xFC5C6C)}
    class var red_FE8B96: UIColor { return UIColor(hex: 0xFE8B96)}
    class var red_FFE1E4: UIColor { return UIColor(hex: 0xFFE1E4)}

    class var Orange_ff7700: UIColor { return UIColor(hex: 0xff7700)}
    class var Orange_ff8800: UIColor { return UIColor(hex: 0xff8800)}
    class var Orange_ff9c2b: UIColor { return UIColor(hex: 0xff9c2b)}
    class var Orange_ffb158: UIColor { return UIColor(hex: 0xffb158)}
    class var Orange_ffc98c: UIColor { return UIColor(hex: 0xffc98c)}
    class var Orange_ffdfba: UIColor { return UIColor(hex: 0xffdfba)}

    /// RGB(102, 24, 255)
    class var purple_6618ff: UIColor { return UIColor(hex: 0x6618ff)}
    /// RGB(159, 110, 255)
    class var purple_9f6eff: UIColor { return UIColor(hex: 0x9f6eff)}

    class var blue_f9f9fa: UIColor { return UIColor(hex: 0xf9f9fa)}
    class var blue_e5f3ff: UIColor { return UIColor(hex: 0xe5f3ff)}
    class var gray_0b0b0b: UIColor { return UIColor(hex: 0x0b0b0b)}
    class var gray_0B0B0B: UIColor { return UIColor(hex: 0x0B0B0B)}

    class var red_F34B55: UIColor { return UIColor(hex: 0xF34B55)}
    class var gray_E3E4E5: UIColor { return UIColor(hex: 0xE3E4E5)}
    class var gray_909090: UIColor { return UIColor(hex: 0x909090)}

    class var gray_7b7b7b: UIColor { return UIColor(hex: 0x7b7b7b)}
    class var gray_F2F4F7: UIColor { return UIColor(hex: 0xF2F4F7)}
    class var gray_F7F8FA: UIColor { return UIColor(hex: 0xF7F8FA)}
    class var gray_CBCDCF: UIColor { return UIColor(hex: 0xCBCDCF)}
    class var gray_1C1D1F: UIColor { return UIColor(hex: 0x1C1D1F)}
    class var gray_737373: UIColor { return UIColor(hex: 0x737373)}
    class var red_F26551: UIColor { return UIColor(hex: 0xF26551)}
    class var red_E54751: UIColor { return UIColor(hex: 0xE54751)}
    class var red_FB9883: UIColor { return UIColor(hex: 0xFB9883)}
    class var red_FE886E: UIColor { return UIColor(hex: 0xFE886E)}
    class var gray_F2F3F4: UIColor { return UIColor(hex: 0xF2F3F4)}
    class var gray_CFCFCF: UIColor { return UIColor(hex: 0xCFCFCF)}
    class var gray_4A4A4A: UIColor { return UIColor(hex: 0x4A4A4A)}
    class var gray_75777B: UIColor { return UIColor(hex: 0x75777B)}
    class var black_0B0B0B: UIColor { return UIColor(hex: 0x0B0B0B)}

    class var gray_F9F9FA: UIColor { return UIColor(hex: 0xF9F9FA)}
    class var orange_F26551: UIColor { return UIColor(hex: 0xF26551)}
    class var orange_FFBE73: UIColor { return UIColor(hex: 0xFFBE73)}
    class var orange_FE886E: UIColor { return UIColor(hex: 0xFE886E)}
    class var orange_FEA08B: UIColor { return UIColor(hex: 0xFEA08B)}
    class var orange_FEB8A8: UIColor { return UIColor(hex: 0xFEB8A8)}
    class var orange_FFCFC5: UIColor { return UIColor(hex: 0xFFCFC5)}

    class var red_FEF1F2: UIColor { return UIColor(hex: 0xFEF1F2)}
    class var red_FFF8F9: UIColor { return UIColor(hex: 0xFFF8F9)}
    class var red_E57157: UIColor { return UIColor(hex: 0xE57157)}
    class var red_EA1724: UIColor { return UIColor(hex: 0xEA1724)}
    class var red_EC5F5F: UIColor { return UIColor(hex: 0xEC5F5F)}
    class var red_FFEBEB: UIColor { return UIColor(hex: 0xFFEBEB)}
    class var red_D74000: UIColor { return UIColor(hex: 0xD74000)}
    class var red_FEEDEE: UIColor { return UIColor(hex: 0xFEEDEE)}
    class var red_FFF0ED: UIColor { return UIColor(hex: 0xFFF0ED)}
    class var red_fff8f9: UIColor { return UIColor(hex: 0xfff8f9)}
    class var red_ab4b4a: UIColor { return UIColor(hex: 0xab4b4a)}

    class var gray_44464A: UIColor { return UIColor(hex: 0x44464A)}
    class var gray_33353C: UIColor { return UIColor(hex: 0x33353C)}
    class var gray_AAAAAA: UIColor { return UIColor(hex: 0xAAAAAA)}
    class var gray_A4A6AA: UIColor { return UIColor(hex: 0xA4A6AA)}
    class var gray_E9EBEF: UIColor { return UIColor(hex: 0xE9EBEF)}
    class var gray_111111: UIColor { return UIColor(hex: 0x111111)}
    class var gray_F4F5F7: UIColor { return UIColor(hex: 0xF4F5F7)}

    class var blue_EDF2FD: UIColor { return UIColor(hex: 0xEDF2FD)}
    class var gray_7B7B7B: UIColor { return UIColor(hex: 0x7B7B7B)}

    class var blue_318ADE: UIColor { return UIColor(hex: 0x318ADE)}
    class var blue_E6F3FF: UIColor { return UIColor(hex: 0xE6F3FF)}

    class var orange_FFF4E6: UIColor { return UIColor(hex: 0xFFF4E6)}
    class var orange_FFF4E5: UIColor { return UIColor(hex: 0xFFF4E5)}
    class var orange_F29930: UIColor { return UIColor(hex: 0xF29930)}
    class var green_50BEC6: UIColor { return UIColor(hex: 0x50BEC6)}

}

extension UIColor {
    /// Opacity값이 `opacity`인 Color object 반환
    func alpha(_ opacity: CGFloat) -> UIColor {
        return self.withAlphaComponent(opacity)
    }
}
