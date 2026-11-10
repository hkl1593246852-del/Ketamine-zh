import Foundation

/// Device category tweaks.
enum DeviceTweaks {
    static let all: [Tweak] = [
        Tweak(
            id: "model-name",
            title: "机型名称",
            subtitle: "修改「设置」里显示的机型名称。",
            category: .device,
            symbol: "iphone",
            isRisky: false,
            notes: nil,
            detail: .textField(placeholder: "Custom model name", keyboard: .plain),
            modifications: [
                GestaltModification(key: "oPeik/9e8lQWMszEjbPzng",
                                    subkey: "ArtworkDeviceProductDescription",
                                    value: .string(""))
            ]
        ),
        Tweak(
            id: "device-subtype",
            title: "机型子类型",
            subtitle: "上报不同的机型，影响图片与界面表现。",
            category: .device,
            symbol: "iphone.gen3",
            isRisky: true,
            notes: "Changes the reported device. Some subtypes disable the Dynamic Island; some devices only support certain values. 'Original' keeps the device's current value. 'None' disables the Dynamic Island.",
            detail: .picker(options: [
                "Original",
                "None (Disable Dynamic Island)",
                "iPhone 14 Pro",
                "iPhone 14 Pro Max",
                "iPhone 15 Pro Max",
                "iPhone 16 Pro",
                "iPhone 16 Pro Max",
                "iPhone Air",
            ]),
            pickerValues: [.keepCurrent, .int(0), .int(2436), .int(2796), .int(2976), .int(2622), .int(2868), .int(2736)],
            modifications: [
                GestaltModification(key: "oPeik/9e8lQWMszEjbPzng",
                                    subkey: "ArtworkDeviceSubType",
                                    value: .keepCurrent, isPicker: true)
            ]
        ),
        Tweak(
            id: "product-type",
            title: "设备伪装（ProductType）",
            subtitle: "伪装上报的机型，以满足 Apple 智能资格。",
            category: .device,
            symbol: "cpu",
            isRisky: true,
            notes: "Spoof to an AI-capable model, back, then to your final model — the AI icon appears in Settings. Don't re-enter Apple Intelligence & Siri settings after un-spoofing. May break Face ID if you keep the spoof.",
            detail: .picker(options: [
                "Default (real model)",
                "iPhone 15 Pro",
                "iPhone 15 Pro Max",
                "iPhone 16",
                "iPhone 16 Plus",
                "iPhone 16 Pro",
                "iPhone 16 Pro Max",
                "iPhone 17",
                "iPhone 17 Pro",
                "iPhone 17 Pro Max",
                "iPhone Air",
            ]),
            pickerValues: [.remove, .string("iPhone16,1"), .string("iPhone16,2"), .string("iPhone17,3"), .string("iPhone17,4"), .string("iPhone17,1"), .string("iPhone17,2"), .string("iPhone18,3"), .string("iPhone18,1"), .string("iPhone18,2"), .string("iPhone18,4")],
            modifications: [
                GestaltModification(key: "h9jDsbgj7xIVeIQ8S3/X3Q",
                                    subkey: nil,
                                    value: .remove, isPicker: true)
            ]
        ),
    ]
}
