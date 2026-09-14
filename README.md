# FantasyCrest2.2_source

干净的hxwz2.2的源码，仅修改了部分反编译错误，用于参照。

## 结构

```txt
FantasyCrest2.2_source/
├── FantasyCrest2.2/            # 游戏源码 + 素材工程
│   └── FantasyCrest2.2/        # ★ 素材工程（未压缩 XFL，等价于 FLA）
├── fonts/                      # 发布前需要安装的字体
├── removed/                    # 被替换的旧库文件（不参与编译）
├── LICENSE
└── README.md
```

## 说明

- 素材工程使用了未压缩的xfl格式而不是直接反编译为fla格式，方便查看、研究并修复问题
- 需要使用至少Adobe FlashProfessional CC及以上版本打开[xfl](https://github.com/Diend2023/FantasyCrest2.2_source/blob/main/FantasyCrest2.2/FantasyCrest2.2/FantasyCrest2.2.xfl)项目
- 部分第三方库使用源码版本进行了替换，详情见[com](https://github.com/Diend2023/FantasyCrest2.2_source/tree/main/FantasyCrest2.2/com)、[deng](https://github.com/Diend2023/FantasyCrest2.2_source/tree/main/FantasyCrest2.2/deng)、[org]((https://github.com/Diend2023/FantasyCrest2.2_source/tree/main/FantasyCrest2.2/org))

## 致谢

- **jindrapetrik** - [jpexs-decompiler](https://github.com/jindrapetrik/jpexs-decompiler)
- **gskinner** - [GTween](https://github.com/gskinner/GTween)
- **spjwebster** - [as3base64](https://github.com/spjwebster/as3base64)
- **claus** - [fzip](https://github.com/claus/fzip)
- **CovertLab** - [NetworkPainter](https://github.com/CovertLab/NetworkPainter/tree/master/src/org/gif)
- **mrdoob** - [Hi-ReS-Stats](https://github.com/mrdoob/Hi-ReS-Stats)
- **superkaka** - [Fps](https://github.com/linchenrr/flash/blob/master/project/KLib/src/org/superkaka/KLib/debug/Fps.as)

## 声明

所有游戏逻辑部分相关代码均为原作者 **左眼** （[Rainy](https://github.com/rainyt)、[左眼](https://gitee.com/zygameui)）所有。

所有[字体文件](https://github.com/Diend2023/FantasyCrest2.2_source/tree/main/fonts)均为互联网上获取，无任何商业用途。
