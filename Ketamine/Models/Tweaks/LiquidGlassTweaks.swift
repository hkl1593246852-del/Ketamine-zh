import Foundation

/// Liquid Glass category tweaks.
enum LiquidGlassTweaks {
    static let all: [Tweak] = [
        Tweak(
            id: "lg-lpm-enable",
            title: "液态玻璃省电",
            subtitle: "强制液态玻璃进入省电模式。",
            category: .liquidGlass,
            symbol: "drop.fill",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "SAGvsp6O6kAQ4fEfDJpC4Q",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "lg-lpm-disable",
            title: "液态玻璃完整效果",
            subtitle: "关闭液态玻璃省电模式。",
            category: .liquidGlass,
            symbol: "drop.halffull",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "SAGvsp6O6kAQ4fEfDJpC4Q",
                                    subkey: nil, value: .int(0))
            ]
        ),
    ]
}
