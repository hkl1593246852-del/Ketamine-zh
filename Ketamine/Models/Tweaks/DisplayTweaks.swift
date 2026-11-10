import Foundation

/// Display category tweaks.
enum DisplayTweaks {
    static let all: [Tweak] = [
        Tweak(
            id: "dynamic-island",
            title: "灵动岛",
            subtitle: "直接强制开启灵动岛能力位。",
            category: .display,
            symbol: "rectangle.inset.filled",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "YlEtTtHlNesRBMal1CqRaA",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "aod",
            title: "常亮显示",
            subtitle: "启用常亮显示支持。",
            category: .display,
            symbol: "sun.max.fill",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "2OOJf1VhaM7NxfRok3HbWQ",
                                    subkey: nil, value: .int(1)),
                GestaltModification(key: "j8/Omm6s1lsmTDFsXjsBfA",
                                    subkey: nil, value: .int(1)),
            ]
        ),
        Tweak(
            id: "aod-vibrancy",
            title: "息屏动态",
            subtitle: "启用常亮显示的动态色彩效果。",
            category: .display,
            symbol: "sparkles",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "ykpu7qyhqFweVMKtxNylWA",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "pwm",
            title: "脉宽调制",
            subtitle: "声明支持 PWM 调光。",
            category: .display,
            symbol: "waveform",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "6IejgN+1Fmu5/QrZFOIeNw",
                                    subkey: nil, value: .int(1))
            ]
        ),
    ]
}
