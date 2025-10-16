; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [149 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [298 x i32] [
	i32 42639949, ; 0: System.Threading.Thread => 0x28aa24d => 137
	i32 67008169, ; 1: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 33
	i32 72070932, ; 2: Microsoft.Maui.Graphics.dll => 0x44bb714 => 52
	i32 117431740, ; 3: System.Runtime.InteropServices => 0x6ffddbc => 128
	i32 165246403, ; 4: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 67
	i32 172961045, ; 5: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 54
	i32 182336117, ; 6: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 85
	i32 195452805, ; 7: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 30
	i32 199333315, ; 8: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 31
	i32 205061960, ; 9: System.ComponentModel => 0xc38ff48 => 100
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 65
	i32 230752869, ; 11: Microsoft.CSharp.dll => 0xdc10265 => 92
	i32 231409092, ; 12: System.Linq.Parallel => 0xdcb05c4 => 111
	i32 280992041, ; 13: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 2
	i32 317674968, ; 14: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 30
	i32 318968648, ; 15: Xamarin.AndroidX.Activity.dll => 0x13031348 => 62
	i32 336156722, ; 16: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 15
	i32 342366114, ; 17: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 74
	i32 356389973, ; 18: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 14
	i32 374794515, ; 19: Syncfusion.Maui.Data.dll => 0x1656e913 => 55
	i32 379916513, ; 20: System.Threading.Thread.dll => 0x16a510e1 => 137
	i32 385762202, ; 21: System.Memory.dll => 0x16fe439a => 114
	i32 395744057, ; 22: _Microsoft.Android.Resource.Designer => 0x17969339 => 36
	i32 435591531, ; 23: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 26
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 97
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 73
	i32 456227837, ; 26: System.Web.HttpUtility.dll => 0x1b317bfd => 139
	i32 456681651, ; 27: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 58
	i32 469710990, ; 28: System.dll => 0x1bff388e => 143
	i32 488065789, ; 29: en-US/Syncfusion.Maui.DataGrid.resources.dll => 0x1d174afd => 34
	i32 498788369, ; 30: System.ObjectModel => 0x1dbae811 => 121
	i32 500358224, ; 31: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 13
	i32 503918385, ; 32: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 7
	i32 513247710, ; 33: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 46
	i32 530272170, ; 34: System.Linq.Queryable => 0x1f9b4faa => 112
	i32 539058512, ; 35: Microsoft.Extensions.Logging => 0x20216150 => 43
	i32 592146354, ; 36: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 21
	i32 597488923, ; 37: CommunityToolkit.Maui => 0x239cf51b => 37
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 71
	i32 627931235, ; 39: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 19
	i32 662205335, ; 40: System.Text.Encodings.Web.dll => 0x27787397 => 134
	i32 672442732, ; 41: System.Collections.Concurrent => 0x2814a96c => 93
	i32 688181140, ; 42: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 1
	i32 690569205, ; 43: System.Xml.Linq.dll => 0x29293ff5 => 140
	i32 699345723, ; 44: System.Reflection.Emit => 0x29af2b3b => 126
	i32 706645707, ; 45: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 16
	i32 709557578, ; 46: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 4
	i32 722857257, ; 47: System.Runtime.Loader.dll => 0x2b15ed29 => 129
	i32 759454413, ; 48: System.Net.Requests => 0x2d445acd => 119
	i32 775507847, ; 49: System.IO.Compression => 0x2e394f87 => 109
	i32 777317022, ; 50: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 25
	i32 789151979, ; 51: Microsoft.Extensions.Options => 0x2f0980eb => 45
	i32 804715423, ; 52: System.Data.Common => 0x2ff6fb9f => 102
	i32 823281589, ; 53: System.Private.Uri.dll => 0x311247b5 => 122
	i32 830298997, ; 54: System.IO.Compression.Brotli => 0x317d5b75 => 108
	i32 878833237, ; 55: en-US\Syncfusion.Maui.DataGrid.resources => 0x3461ee55 => 34
	i32 878954865, ; 56: System.Net.Http.Json => 0x3463c971 => 115
	i32 904024072, ; 57: System.ComponentModel.Primitives.dll => 0x35e25008 => 98
	i32 926902833, ; 58: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 28
	i32 967690846, ; 59: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 74
	i32 975874589, ; 60: System.Xml.XDocument => 0x3a2aaa1d => 142
	i32 992768348, ; 61: System.Collections.dll => 0x3b2c715c => 97
	i32 1007059922, ; 62: SF_Demo.dll => 0x3c0683d2 => 91
	i32 1012816738, ; 63: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 84
	i32 1019214401, ; 64: System.Drawing => 0x3cbffa41 => 107
	i32 1028951442, ; 65: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 42
	i32 1029334545, ; 66: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 3
	i32 1035644815, ; 67: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 63
	i32 1036536393, ; 68: System.Drawing.Primitives.dll => 0x3dc84a49 => 106
	i32 1044663988, ; 69: System.Linq.Expressions.dll => 0x3e444eb4 => 110
	i32 1052210849, ; 70: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 76
	i32 1082857460, ; 71: System.ComponentModel.TypeConverter => 0x408b17f4 => 99
	i32 1084122840, ; 72: Xamarin.Kotlin.StdLib => 0x409e66d8 => 89
	i32 1098259244, ; 73: System => 0x41761b2c => 143
	i32 1118262833, ; 74: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 16
	i32 1126950560, ; 75: Syncfusion.Maui.PullToRefresh.dll => 0x432be6a0 => 61
	i32 1168523401, ; 76: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 22
	i32 1178241025, ; 77: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 81
	i32 1203215381, ; 78: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 20
	i32 1208641965, ; 79: System.Diagnostics.Process => 0x480a69ad => 104
	i32 1234928153, ; 80: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 18
	i32 1260983243, ; 81: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 2
	i32 1293217323, ; 82: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 72
	i32 1324164729, ; 83: System.Linq => 0x4eed2679 => 113
	i32 1373134921, ; 84: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 32
	i32 1376866003, ; 85: Xamarin.AndroidX.SavedState => 0x52114ed3 => 84
	i32 1406073936, ; 86: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 68
	i32 1408764838, ; 87: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 131
	i32 1430672901, ; 88: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 0
	i32 1461004990, ; 89: es\Microsoft.Maui.Controls.resources => 0x57152abe => 6
	i32 1461234159, ; 90: System.Collections.Immutable.dll => 0x5718a9ef => 94
	i32 1462112819, ; 91: System.IO.Compression.dll => 0x57261233 => 109
	i32 1469204771, ; 92: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 64
	i32 1470490898, ; 93: Microsoft.Extensions.Primitives => 0x57a5e912 => 46
	i32 1479771757, ; 94: System.Collections.Immutable => 0x5833866d => 94
	i32 1480492111, ; 95: System.IO.Compression.Brotli.dll => 0x583e844f => 108
	i32 1493001747, ; 96: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 10
	i32 1514721132, ; 97: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 5
	i32 1543031311, ; 98: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 136
	i32 1543355203, ; 99: System.Reflection.Emit.dll => 0x5bfdbb43 => 126
	i32 1551623176, ; 100: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 25
	i32 1589115732, ; 101: Syncfusion.Maui.Data => 0x5eb7fb54 => 55
	i32 1622152042, ; 102: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 78
	i32 1624863272, ; 103: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 87
	i32 1634654947, ; 104: CommunityToolkit.Maui.Core.dll => 0x616edae3 => 38
	i32 1636350590, ; 105: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 70
	i32 1639515021, ; 106: System.Net.Http.dll => 0x61b9038d => 116
	i32 1639986890, ; 107: System.Text.RegularExpressions => 0x61c036ca => 136
	i32 1653151792, ; 108: Syncfusion.Maui.Inputs.dll => 0x62891830 => 59
	i32 1657153582, ; 109: System.Runtime => 0x62c6282e => 132
	i32 1658251792, ; 110: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 88
	i32 1677501392, ; 111: System.Net.Primitives.dll => 0x63fca3d0 => 118
	i32 1679769178, ; 112: System.Security.Cryptography => 0x641f3e5a => 133
	i32 1729485958, ; 113: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 66
	i32 1736233607, ; 114: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 23
	i32 1743415430, ; 115: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 1
	i32 1763938596, ; 116: System.Diagnostics.TraceSource.dll => 0x69239124 => 105
	i32 1766324549, ; 117: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 85
	i32 1770582343, ; 118: Microsoft.Extensions.Logging.dll => 0x6988f147 => 43
	i32 1779859068, ; 119: Syncfusion.Maui.DataGrid.dll => 0x6a167e7c => 56
	i32 1780572499, ; 120: Mono.Android.Runtime.dll => 0x6a216153 => 147
	i32 1782862114, ; 121: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 17
	i32 1788241197, ; 122: Xamarin.AndroidX.Fragment => 0x6a96652d => 73
	i32 1793755602, ; 123: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 9
	i32 1808609942, ; 124: Xamarin.AndroidX.Loader => 0x6bcd3296 => 78
	i32 1813058853, ; 125: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 89
	i32 1813201214, ; 126: Xamarin.Google.Android.Material => 0x6c13413e => 88
	i32 1818569960, ; 127: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 82
	i32 1824722060, ; 128: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 131
	i32 1828688058, ; 129: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 44
	i32 1842015223, ; 130: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 29
	i32 1853025655, ; 131: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 26
	i32 1858542181, ; 132: System.Linq.Expressions => 0x6ec71a65 => 110
	i32 1870277092, ; 133: System.Reflection.Primitives => 0x6f7a29e4 => 127
	i32 1875935024, ; 134: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 8
	i32 1910275211, ; 135: System.Collections.NonGeneric.dll => 0x71dc7c8b => 95
	i32 1939592360, ; 136: System.Private.Xml.Linq => 0x739bd4a8 => 123
	i32 1968388702, ; 137: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 39
	i32 2003115576, ; 138: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 5
	i32 2019465201, ; 139: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 76
	i32 2025202353, ; 140: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 0
	i32 2045470958, ; 141: System.Private.Xml => 0x79eb68ee => 124
	i32 2055257422, ; 142: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 75
	i32 2066184531, ; 143: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 4
	i32 2070888862, ; 144: System.Diagnostics.TraceSource => 0x7b6f419e => 105
	i32 2079903147, ; 145: System.Runtime.dll => 0x7bf8cdab => 132
	i32 2090596640, ; 146: System.Numerics.Vectors => 0x7c9bf920 => 120
	i32 2127167465, ; 147: System.Console => 0x7ec9ffe9 => 101
	i32 2142473426, ; 148: System.Collections.Specialized => 0x7fb38cd2 => 96
	i32 2159891885, ; 149: Microsoft.Maui => 0x80bd55ad => 50
	i32 2169148018, ; 150: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 12
	i32 2181898931, ; 151: Microsoft.Extensions.Options.dll => 0x820d22b3 => 45
	i32 2192057212, ; 152: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 44
	i32 2193016926, ; 153: System.ObjectModel.dll => 0x82b6c85e => 121
	i32 2201107256, ; 154: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 90
	i32 2201231467, ; 155: System.Net.Http => 0x8334206b => 116
	i32 2207618523, ; 156: it\Microsoft.Maui.Controls.resources => 0x839595db => 14
	i32 2266799131, ; 157: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 40
	i32 2270573516, ; 158: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 8
	i32 2279755925, ; 159: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 83
	i32 2298471582, ; 160: System.Net.Mail => 0x88ffe49e => 117
	i32 2303942373, ; 161: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 18
	i32 2305521784, ; 162: System.Private.CoreLib.dll => 0x896b7878 => 145
	i32 2353062107, ; 163: System.Net.Primitives => 0x8c40e0db => 118
	i32 2354730003, ; 164: Syncfusion.Licensing => 0x8c5a5413 => 53
	i32 2368005991, ; 165: System.Xml.ReaderWriter.dll => 0x8d24e767 => 141
	i32 2371007202, ; 166: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 39
	i32 2395872292, ; 167: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 13
	i32 2401565422, ; 168: System.Web.HttpUtility => 0x8f24faee => 139
	i32 2426750280, ; 169: en-US\Syncfusion.Maui.Inputs.resources => 0x90a54548 => 35
	i32 2427813419, ; 170: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 10
	i32 2435356389, ; 171: System.Console.dll => 0x912896e5 => 101
	i32 2459001652, ; 172: System.Linq.Parallel.dll => 0x92916334 => 111
	i32 2471841756, ; 173: netstandard.dll => 0x93554fdc => 144
	i32 2475788418, ; 174: Java.Interop.dll => 0x93918882 => 146
	i32 2480646305, ; 175: Microsoft.Maui.Controls => 0x93dba8a1 => 48
	i32 2550873716, ; 176: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 11
	i32 2562349572, ; 177: Microsoft.CSharp => 0x98ba5a04 => 92
	i32 2570120770, ; 178: System.Text.Encodings.Web => 0x9930ee42 => 134
	i32 2593496499, ; 179: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 20
	i32 2605712449, ; 180: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 90
	i32 2617129537, ; 181: System.Private.Xml.dll => 0x9bfe3a41 => 124
	i32 2620871830, ; 182: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 70
	i32 2626831493, ; 183: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 15
	i32 2663698177, ; 184: System.Runtime.Loader => 0x9ec4cf01 => 129
	i32 2664396074, ; 185: System.Xml.XDocument.dll => 0x9ecf752a => 142
	i32 2665622720, ; 186: System.Drawing.Primitives => 0x9ee22cc0 => 106
	i32 2676780864, ; 187: System.Data.Common.dll => 0x9f8c6f40 => 102
	i32 2707746672, ; 188: Syncfusion.Maui.PullToRefresh => 0xa164ef70 => 61
	i32 2724373263, ; 189: System.Runtime.Numerics.dll => 0xa262a30f => 130
	i32 2732626843, ; 190: Xamarin.AndroidX.Activity => 0xa2e0939b => 62
	i32 2737747696, ; 191: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 64
	i32 2743368605, ; 192: Syncfusion.Maui.DataSource => 0xa3847b9d => 57
	i32 2752995522, ; 193: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 21
	i32 2758225723, ; 194: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 49
	i32 2764765095, ; 195: Microsoft.Maui.dll => 0xa4caf7a7 => 50
	i32 2778768386, ; 196: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 86
	i32 2785988530, ; 197: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 27
	i32 2801831435, ; 198: Microsoft.Maui.Graphics => 0xa7008e0b => 52
	i32 2806116107, ; 199: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 6
	i32 2810250172, ; 200: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 68
	i32 2831556043, ; 201: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 19
	i32 2853208004, ; 202: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 86
	i32 2861189240, ; 203: Microsoft.Maui.Essentials => 0xaa8a4878 => 51
	i32 2868488919, ; 204: CommunityToolkit.Maui.Core => 0xaaf9aad7 => 38
	i32 2868557005, ; 205: Syncfusion.Licensing.dll => 0xaafab4cd => 53
	i32 2909740682, ; 206: System.Private.CoreLib => 0xad6f1e8a => 145
	i32 2915140907, ; 207: Syncfusion.Maui.DataGrid => 0xadc1852b => 56
	i32 2916838712, ; 208: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 87
	i32 2919462931, ; 209: System.Numerics.Vectors.dll => 0xae037813 => 120
	i32 2959614098, ; 210: System.ComponentModel.dll => 0xb0682092 => 100
	i32 2978675010, ; 211: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 72
	i32 3038032645, ; 212: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 36
	i32 3057625584, ; 213: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 79
	i32 3059408633, ; 214: Mono.Android.Runtime => 0xb65adef9 => 147
	i32 3059793426, ; 215: System.ComponentModel.Primitives => 0xb660be12 => 98
	i32 3077302341, ; 216: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 12
	i32 3140633799, ; 217: Syncfusion.Maui.ListView => 0xbb3244c7 => 60
	i32 3147228406, ; 218: Syncfusion.Maui.Core => 0xbb96e4f6 => 54
	i32 3159123045, ; 219: System.Reflection.Primitives.dll => 0xbc4c6465 => 127
	i32 3170039328, ; 220: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 60
	i32 3178803400, ; 221: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 80
	i32 3220365878, ; 222: System.Threading => 0xbff2e236 => 138
	i32 3258312781, ; 223: Xamarin.AndroidX.CardView => 0xc235e84d => 66
	i32 3265493905, ; 224: System.Linq.Queryable.dll => 0xc2a37b91 => 112
	i32 3305363605, ; 225: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 7
	i32 3306970809, ; 226: Syncfusion.Maui.Inputs => 0xc51c5eb9 => 59
	i32 3316684772, ; 227: System.Net.Requests.dll => 0xc5b097e4 => 119
	i32 3317135071, ; 228: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 71
	i32 3346324047, ; 229: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 81
	i32 3357674450, ; 230: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 24
	i32 3358260929, ; 231: System.Text.Json => 0xc82afec1 => 135
	i32 3362522851, ; 232: Xamarin.AndroidX.Core => 0xc86c06e3 => 69
	i32 3366347497, ; 233: Java.Interop => 0xc8a662e9 => 146
	i32 3374999561, ; 234: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 83
	i32 3381016424, ; 235: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 3
	i32 3381934622, ; 236: Syncfusion.Maui.GridCommon => 0xc9943a1e => 58
	i32 3428513518, ; 237: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 41
	i32 3430777524, ; 238: netstandard => 0xcc7d82b4 => 144
	i32 3452344032, ; 239: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 47
	i32 3463511458, ; 240: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 11
	i32 3471940407, ; 241: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 99
	i32 3476120550, ; 242: Mono.Android => 0xcf3163e6 => 148
	i32 3479583265, ; 243: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 24
	i32 3484440000, ; 244: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 23
	i32 3485117614, ; 245: System.Text.Json.dll => 0xcfbaacae => 135
	i32 3509114376, ; 246: System.Xml.Linq => 0xd128d608 => 140
	i32 3558305335, ; 247: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 57
	i32 3580758918, ; 248: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 31
	i32 3608519521, ; 249: System.Linq.dll => 0xd715a361 => 113
	i32 3641597786, ; 250: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 75
	i32 3643446276, ; 251: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 28
	i32 3643854240, ; 252: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 80
	i32 3657292374, ; 253: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 40
	i32 3672681054, ; 254: Mono.Android.dll => 0xdae8aa5e => 148
	i32 3682565725, ; 255: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 65
	i32 3697841164, ; 256: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 33
	i32 3724971120, ; 257: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 79
	i32 3737834244, ; 258: System.Net.Http.Json.dll => 0xdecad304 => 115
	i32 3748608112, ; 259: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 103
	i32 3786282454, ; 260: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 67
	i32 3792276235, ; 261: System.Collections.NonGeneric => 0xe2098b0b => 95
	i32 3800979733, ; 262: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 47
	i32 3802395368, ; 263: System.Collections.Specialized.dll => 0xe2a3f2e8 => 96
	i32 3817368567, ; 264: CommunityToolkit.Maui.dll => 0xe3886bf7 => 37
	i32 3823082795, ; 265: System.Security.Cryptography.dll => 0xe3df9d2b => 133
	i32 3841636137, ; 266: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 42
	i32 3844307129, ; 267: System.Net.Mail.dll => 0xe52378b9 => 117
	i32 3849253459, ; 268: System.Runtime.InteropServices.dll => 0xe56ef253 => 128
	i32 3889960447, ; 269: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 32
	i32 3896106733, ; 270: System.Collections.Concurrent.dll => 0xe839deed => 93
	i32 3896760992, ; 271: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 69
	i32 3928044579, ; 272: System.Xml.ReaderWriter => 0xea213423 => 141
	i32 3931092270, ; 273: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 82
	i32 3955647286, ; 274: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 63
	i32 3980434154, ; 275: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 27
	i32 3982571493, ; 276: en-US/Syncfusion.Maui.Inputs.resources.dll => 0xed6137e5 => 35
	i32 3987592930, ; 277: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 9
	i32 4003436829, ; 278: System.Diagnostics.Process.dll => 0xee9f991d => 104
	i32 4025784931, ; 279: System.Memory => 0xeff49a63 => 114
	i32 4046471985, ; 280: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 49
	i32 4053692430, ; 281: SF_Demo => 0xf19e700e => 91
	i32 4054681211, ; 282: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 125
	i32 4068434129, ; 283: System.Private.Xml.Linq.dll => 0xf27f60d1 => 123
	i32 4073602200, ; 284: System.Threading.dll => 0xf2ce3c98 => 138
	i32 4094352644, ; 285: Microsoft.Maui.Essentials.dll => 0xf40add04 => 51
	i32 4099507663, ; 286: System.Drawing.dll => 0xf45985cf => 107
	i32 4100113165, ; 287: System.Private.Uri => 0xf462c30d => 122
	i32 4102112229, ; 288: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 22
	i32 4125707920, ; 289: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 17
	i32 4126470640, ; 290: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 41
	i32 4147896353, ; 291: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 125
	i32 4150914736, ; 292: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 29
	i32 4182413190, ; 293: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 77
	i32 4213026141, ; 294: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 103
	i32 4271975918, ; 295: Microsoft.Maui.Controls.dll => 0xfea12dee => 48
	i32 4274976490, ; 296: System.Runtime.Numerics => 0xfecef6ea => 130
	i32 4292120959 ; 297: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 77
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [298 x i32] [
	i32 137, ; 0
	i32 33, ; 1
	i32 52, ; 2
	i32 128, ; 3
	i32 67, ; 4
	i32 54, ; 5
	i32 85, ; 6
	i32 30, ; 7
	i32 31, ; 8
	i32 100, ; 9
	i32 65, ; 10
	i32 92, ; 11
	i32 111, ; 12
	i32 2, ; 13
	i32 30, ; 14
	i32 62, ; 15
	i32 15, ; 16
	i32 74, ; 17
	i32 14, ; 18
	i32 55, ; 19
	i32 137, ; 20
	i32 114, ; 21
	i32 36, ; 22
	i32 26, ; 23
	i32 97, ; 24
	i32 73, ; 25
	i32 139, ; 26
	i32 58, ; 27
	i32 143, ; 28
	i32 34, ; 29
	i32 121, ; 30
	i32 13, ; 31
	i32 7, ; 32
	i32 46, ; 33
	i32 112, ; 34
	i32 43, ; 35
	i32 21, ; 36
	i32 37, ; 37
	i32 71, ; 38
	i32 19, ; 39
	i32 134, ; 40
	i32 93, ; 41
	i32 1, ; 42
	i32 140, ; 43
	i32 126, ; 44
	i32 16, ; 45
	i32 4, ; 46
	i32 129, ; 47
	i32 119, ; 48
	i32 109, ; 49
	i32 25, ; 50
	i32 45, ; 51
	i32 102, ; 52
	i32 122, ; 53
	i32 108, ; 54
	i32 34, ; 55
	i32 115, ; 56
	i32 98, ; 57
	i32 28, ; 58
	i32 74, ; 59
	i32 142, ; 60
	i32 97, ; 61
	i32 91, ; 62
	i32 84, ; 63
	i32 107, ; 64
	i32 42, ; 65
	i32 3, ; 66
	i32 63, ; 67
	i32 106, ; 68
	i32 110, ; 69
	i32 76, ; 70
	i32 99, ; 71
	i32 89, ; 72
	i32 143, ; 73
	i32 16, ; 74
	i32 61, ; 75
	i32 22, ; 76
	i32 81, ; 77
	i32 20, ; 78
	i32 104, ; 79
	i32 18, ; 80
	i32 2, ; 81
	i32 72, ; 82
	i32 113, ; 83
	i32 32, ; 84
	i32 84, ; 85
	i32 68, ; 86
	i32 131, ; 87
	i32 0, ; 88
	i32 6, ; 89
	i32 94, ; 90
	i32 109, ; 91
	i32 64, ; 92
	i32 46, ; 93
	i32 94, ; 94
	i32 108, ; 95
	i32 10, ; 96
	i32 5, ; 97
	i32 136, ; 98
	i32 126, ; 99
	i32 25, ; 100
	i32 55, ; 101
	i32 78, ; 102
	i32 87, ; 103
	i32 38, ; 104
	i32 70, ; 105
	i32 116, ; 106
	i32 136, ; 107
	i32 59, ; 108
	i32 132, ; 109
	i32 88, ; 110
	i32 118, ; 111
	i32 133, ; 112
	i32 66, ; 113
	i32 23, ; 114
	i32 1, ; 115
	i32 105, ; 116
	i32 85, ; 117
	i32 43, ; 118
	i32 56, ; 119
	i32 147, ; 120
	i32 17, ; 121
	i32 73, ; 122
	i32 9, ; 123
	i32 78, ; 124
	i32 89, ; 125
	i32 88, ; 126
	i32 82, ; 127
	i32 131, ; 128
	i32 44, ; 129
	i32 29, ; 130
	i32 26, ; 131
	i32 110, ; 132
	i32 127, ; 133
	i32 8, ; 134
	i32 95, ; 135
	i32 123, ; 136
	i32 39, ; 137
	i32 5, ; 138
	i32 76, ; 139
	i32 0, ; 140
	i32 124, ; 141
	i32 75, ; 142
	i32 4, ; 143
	i32 105, ; 144
	i32 132, ; 145
	i32 120, ; 146
	i32 101, ; 147
	i32 96, ; 148
	i32 50, ; 149
	i32 12, ; 150
	i32 45, ; 151
	i32 44, ; 152
	i32 121, ; 153
	i32 90, ; 154
	i32 116, ; 155
	i32 14, ; 156
	i32 40, ; 157
	i32 8, ; 158
	i32 83, ; 159
	i32 117, ; 160
	i32 18, ; 161
	i32 145, ; 162
	i32 118, ; 163
	i32 53, ; 164
	i32 141, ; 165
	i32 39, ; 166
	i32 13, ; 167
	i32 139, ; 168
	i32 35, ; 169
	i32 10, ; 170
	i32 101, ; 171
	i32 111, ; 172
	i32 144, ; 173
	i32 146, ; 174
	i32 48, ; 175
	i32 11, ; 176
	i32 92, ; 177
	i32 134, ; 178
	i32 20, ; 179
	i32 90, ; 180
	i32 124, ; 181
	i32 70, ; 182
	i32 15, ; 183
	i32 129, ; 184
	i32 142, ; 185
	i32 106, ; 186
	i32 102, ; 187
	i32 61, ; 188
	i32 130, ; 189
	i32 62, ; 190
	i32 64, ; 191
	i32 57, ; 192
	i32 21, ; 193
	i32 49, ; 194
	i32 50, ; 195
	i32 86, ; 196
	i32 27, ; 197
	i32 52, ; 198
	i32 6, ; 199
	i32 68, ; 200
	i32 19, ; 201
	i32 86, ; 202
	i32 51, ; 203
	i32 38, ; 204
	i32 53, ; 205
	i32 145, ; 206
	i32 56, ; 207
	i32 87, ; 208
	i32 120, ; 209
	i32 100, ; 210
	i32 72, ; 211
	i32 36, ; 212
	i32 79, ; 213
	i32 147, ; 214
	i32 98, ; 215
	i32 12, ; 216
	i32 60, ; 217
	i32 54, ; 218
	i32 127, ; 219
	i32 60, ; 220
	i32 80, ; 221
	i32 138, ; 222
	i32 66, ; 223
	i32 112, ; 224
	i32 7, ; 225
	i32 59, ; 226
	i32 119, ; 227
	i32 71, ; 228
	i32 81, ; 229
	i32 24, ; 230
	i32 135, ; 231
	i32 69, ; 232
	i32 146, ; 233
	i32 83, ; 234
	i32 3, ; 235
	i32 58, ; 236
	i32 41, ; 237
	i32 144, ; 238
	i32 47, ; 239
	i32 11, ; 240
	i32 99, ; 241
	i32 148, ; 242
	i32 24, ; 243
	i32 23, ; 244
	i32 135, ; 245
	i32 140, ; 246
	i32 57, ; 247
	i32 31, ; 248
	i32 113, ; 249
	i32 75, ; 250
	i32 28, ; 251
	i32 80, ; 252
	i32 40, ; 253
	i32 148, ; 254
	i32 65, ; 255
	i32 33, ; 256
	i32 79, ; 257
	i32 115, ; 258
	i32 103, ; 259
	i32 67, ; 260
	i32 95, ; 261
	i32 47, ; 262
	i32 96, ; 263
	i32 37, ; 264
	i32 133, ; 265
	i32 42, ; 266
	i32 117, ; 267
	i32 128, ; 268
	i32 32, ; 269
	i32 93, ; 270
	i32 69, ; 271
	i32 141, ; 272
	i32 82, ; 273
	i32 63, ; 274
	i32 27, ; 275
	i32 35, ; 276
	i32 9, ; 277
	i32 104, ; 278
	i32 114, ; 279
	i32 49, ; 280
	i32 91, ; 281
	i32 125, ; 282
	i32 123, ; 283
	i32 138, ; 284
	i32 51, ; 285
	i32 107, ; 286
	i32 122, ; 287
	i32 22, ; 288
	i32 17, ; 289
	i32 41, ; 290
	i32 125, ; 291
	i32 29, ; 292
	i32 77, ; 293
	i32 103, ; 294
	i32 48, ; 295
	i32 130, ; 296
	i32 77 ; 297
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"min_enum_size", i32 4}
