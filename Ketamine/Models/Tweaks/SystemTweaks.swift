import Foundation

/// System category tweaks.
enum SystemTweaks {
    static let all: [Tweak] = [
        Tweak(
            id: "boot-chime",
            title: "开机音效",
            subtitle: "开机时启用 macOS 风格提示音。",
            category: .system,
            symbol: "music.note",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "QHxt+hGLaBPbQJbXiUJX3w",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "charge-limit",
            title: "充电上限",
            subtitle: "启用 80% 充电上限。",
            category: .system,
            symbol: "battery.75percent",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "37NVydb//GP/GrhuTN+exg",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "collision-sos",
            title: "碰撞检测",
            subtitle: "启用碰撞检测菜单。",
            category: .system,
            symbol: "car.side.fill",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "HCzWusHQwZDea6nNhaKndw",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "tap-to-wake",
            title: "轻点唤醒",
            subtitle: "启用轻点唤醒（iPhone SE 上很实用）。",
            category: .system,
            symbol: "hand.tap.fill",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "yZf3GTRMGTuwSV/lD7Cagw",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "iphone-16-settings",
            title: "iPhone 16 设置",
            subtitle: "显示相机控制设置面板。",
            category: .system,
            symbol: "button.programmable",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "CwvKxM2cEogD3p+HYgaW0Q",
                                    subkey: nil, value: .int(1)),
                GestaltModification(key: "oOV1jhJbdV3AddkcCg0AEA",
                                    subkey: nil, value: .int(1)),
            ]
        ),
        Tweak(
            id: "parallax",
            title: "关闭壁纸视差",
            subtitle: "关闭壁纸景深与视差效果。",
            category: .system,
            symbol: "square.3.layers.3d.slash",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "UIParallaxCapability",
                                    subkey: nil, value: .int(0))
            ]
        ),
        Tweak(
            id: "stage-manager",
            title: "台前调度",
            subtitle: "声明支持台前调度。",
            category: .system,
            symbol: "macwindow",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "qeaj75wk3HF4DwQ8qbIi7g",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "shutter",
            title: "地区限制",
            subtitle: "伪装地区以解除快门声限制。",
            category: .system,
            symbol: "camera.aperture",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "h63QSdBCiT/z0WU6rdQv6Q",
                                    subkey: nil, value: .string("US")),
                GestaltModification(key: "zHeENZu+wbg7PUprwNwBWg",
                                    subkey: nil, value: .string("LL/A")),
            ]
        ),
        Tweak(
            id: "pencil",
            title: "Apple Pencil 设置",
            subtitle: "显示 Apple Pencil 设置标签页。",
            category: .system,
            symbol: "pencil.tip",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "yhHcB0iH0d1XzPO/CFd3ow",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "action-button",
            title: "操作按钮设置",
            subtitle: "显示操作按钮设置标签页。",
            category: .system,
            symbol: "button.horizontal.top.press.fill",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "cT44WE1EohiwRzhsZ8xEsw",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "internal-storage",
            title: "内部存储",
            subtitle: "显示内部存储容量。",
            category: .system,
            symbol: "internaldrive.fill",
            isRisky: true,
            notes: "Risky on some devices, mainly iPads.",
            modifications: [
                GestaltModification(key: "LBJfwOEzExRxzlAnSuI7eg",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "internal-install",
            title: "内部安装",
            subtitle: "把系统标记为内部版本（任意界面可开 Metal HUD）。",
            category: .system,
            symbol: "wrench.and.screwdriver.fill",
            isRisky: false,
            notes: nil,
            modifications: [
                GestaltModification(key: "EqrsVvjcYDdxHBiQmGhAWw",
                                    subkey: nil, value: .int(1))
            ]
        ),
        Tweak(
            id: "internal-features",
            title: "内部功能",
            subtitle: "通过 CacheData 暴露内部设置与构建标志。",
            category: .system,
            symbol: "ant",
            isRisky: true,
            notes: "Writes the internal-build, internal-settings-bundle and internal-install flags directly into CacheData.",
            modifications: [
                GestaltModification(key: "EqrsVvjcYDdxHBiQmGhAWw",
                                    subkey: nil, value: .int(1),
                                    cacheDataKey: "EqrsVvjcYDdxHBiQmGhAWw",
                                    cacheDataDisabledValue: 0),
                GestaltModification(key: "Oji6HRoPi7rH7HPdWVakuw",
                                    subkey: nil, value: .int(1),
                                    cacheDataKey: "Oji6HRoPi7rH7HPdWVakuw",
                                    cacheDataDisabledValue: 0),
                GestaltModification(key: "LBJfwOEzExRxzlAnSuI7eg",
                                    subkey: nil, value: .int(1),
                                    cacheDataKey: "LBJfwOEzExRxzlAnSuI7eg",
                                    cacheDataDisabledValue: 0),
            ]
        ),
        Tweak(
            id: "srd",
            title: "安全研究设备",
            subtitle: "启用安全研究设备模式。",
            category: .system,
            symbol: "lock.shield.fill",
            isRisky: true,
            notes: "Intended for security research devices.",
            modifications: [
                GestaltModification(key: "XYlJKKkj2hztRP1NWWnhlw",
                                    subkey: nil, value: .int(1))
            ]
        ),
    ]
}
