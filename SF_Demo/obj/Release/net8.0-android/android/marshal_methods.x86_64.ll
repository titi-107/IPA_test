; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [149 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [298 x i64] [
	i64 98382396393917666, ; 0: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 46
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 148
	i64 131669012237370309, ; 2: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 51
	i64 196720943101637631, ; 3: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 110
	i64 210515253464952879, ; 4: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 67
	i64 232391251801502327, ; 5: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 84
	i64 267080112704573687, ; 6: Syncfusion.Maui.Data.dll => 0x3b4dbf28c53d0f7 => 55
	i64 545109961164950392, ; 7: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 7
	i64 560278790331054453, ; 8: System.Reflection.Primitives => 0x7c6829760de3975 => 127
	i64 750875890346172408, ; 9: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 137
	i64 799765834175365804, ; 10: System.ComponentModel.dll => 0xb1956c9f18442ac => 100
	i64 849051935479314978, ; 11: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 10
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 72
	i64 1010599046655515943, ; 13: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 127
	i64 1120440138749646132, ; 14: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 88
	i64 1121665720830085036, ; 15: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 18
	i64 1268860745194512059, ; 16: System.Drawing.dll => 0x119be62002c19ebb => 107
	i64 1369545283391376210, ; 17: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 80
	i64 1476839205573959279, ; 18: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 118
	i64 1486715745332614827, ; 19: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 48
	i64 1513467482682125403, ; 20: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 147
	i64 1537168428375924959, ; 21: System.Threading.Thread.dll => 0x15551e8a954ae0df => 137
	i64 1556147632182429976, ; 22: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 16
	i64 1624659445732251991, ; 23: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 64
	i64 1628611045998245443, ; 24: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 77
	i64 1735388228521408345, ; 25: System.Net.Mail.dll => 0x181556663c69b759 => 117
	i64 1743969030606105336, ; 26: System.Memory.dll => 0x1833d297e88f2af8 => 114
	i64 1767386781656293639, ; 27: System.Private.Uri.dll => 0x188704e9f5582107 => 122
	i64 1795316252682057001, ; 28: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 63
	i64 1835311033149317475, ; 29: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 6
	i64 1836611346387731153, ; 30: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 84
	i64 1875417405349196092, ; 31: System.Drawing.Primitives => 0x1a06d2319b6c713c => 106
	i64 1881198190668717030, ; 32: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 28
	i64 1920760634179481754, ; 33: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 49
	i64 1959996714666907089, ; 34: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 28
	i64 1981742497975770890, ; 35: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 76
	i64 1983698669889758782, ; 36: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 2
	i64 2019660174692588140, ; 37: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 20
	i64 2102659300918482391, ; 38: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 106
	i64 2165725771938924357, ; 39: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 65
	i64 2262844636196693701, ; 40: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 72
	i64 2287834202362508563, ; 41: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 93
	i64 2302323944321350744, ; 42: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 24
	i64 2329709569556905518, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 75
	i64 2335503487726329082, ; 44: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 134
	i64 2470498323731680442, ; 45: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 68
	i64 2497223385847772520, ; 46: System.Runtime => 0x22a7eb7046413568 => 132
	i64 2547086958574651984, ; 47: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 62
	i64 2567318800469729806, ; 48: Syncfusion.Maui.PullToRefresh => 0x23a0f2d8c72e220e => 61
	i64 2602673633151553063, ; 49: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 27
	i64 2656907746661064104, ; 50: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 41
	i64 2662981627730767622, ; 51: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 2
	i64 2895129759130297543, ; 52: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 7
	i64 3017704767998173186, ; 53: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 88
	i64 3289520064315143713, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 74
	i64 3311221304742556517, ; 55: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 120
	i64 3325875462027654285, ; 56: System.Runtime.Numerics => 0x2e27e21c8958b48d => 130
	i64 3344514922410554693, ; 57: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 90
	i64 3429672777697402584, ; 58: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 51
	i64 3494946837667399002, ; 59: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 39
	i64 3522470458906976663, ; 60: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 85
	i64 3551103847008531295, ; 61: System.Private.CoreLib.dll => 0x31480e226177735f => 145
	i64 3567343442040498961, ; 62: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 22
	i64 3571415421602489686, ; 63: System.Runtime.dll => 0x319037675df7e556 => 132
	i64 3638003163729360188, ; 64: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 40
	i64 3647754201059316852, ; 65: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 141
	i64 3655542548057982301, ; 66: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 39
	i64 3716579019761409177, ; 67: netstandard.dll => 0x3393f0ed5c8c5c99 => 144
	i64 3727469159507183293, ; 68: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 83
	i64 3869221888984012293, ; 69: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 43
	i64 3890352374528606784, ; 70: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 49
	i64 3933965368022646939, ; 71: System.Net.Requests => 0x369840a8bfadc09b => 119
	i64 3966267475168208030, ; 72: System.Memory => 0x370b03412596249e => 114
	i64 4073500526318903918, ; 73: System.Private.Xml.dll => 0x3887fb25779ae26e => 124
	i64 4073631083018132676, ; 74: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 47
	i64 4120493066591692148, ; 75: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 33
	i64 4154383907710350974, ; 76: System.ComponentModel => 0x39a7562737acb67e => 100
	i64 4187479170553454871, ; 77: System.Linq.Expressions => 0x3a1cea1e912fa117 => 110
	i64 4205801962323029395, ; 78: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 99
	i64 4282138915307457788, ; 79: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 126
	i64 4356591372459378815, ; 80: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 30
	i64 4477672992252076438, ; 81: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 139
	i64 4533124835995628778, ; 82: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 126
	i64 4679594760078841447, ; 83: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 0
	i64 4794310189461587505, ; 84: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 62
	i64 4795410492532947900, ; 85: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 85
	i64 4809057822547766521, ; 86: System.Drawing => 0x42bd349c3145ecf9 => 107
	i64 4853321196694829351, ; 87: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 129
	i64 5103417709280584325, ; 88: System.Collections.Specialized => 0x46d2fb5e161b6285 => 96
	i64 5182934613077526976, ; 89: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 96
	i64 5290786973231294105, ; 90: System.Runtime.Loader => 0x496ca6b869b72699 => 129
	i64 5332349484191854038, ; 91: Syncfusion.Maui.Core.dll => 0x4a004f9a977e2dd6 => 54
	i64 5346319026587908699, ; 92: Syncfusion.Maui.DataGrid => 0x4a31f0d423af3a5b => 56
	i64 5471532531798518949, ; 93: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 26
	i64 5521052132552059825, ; 94: Syncfusion.Maui.Inputs => 0x4c9eb7a9ab2dabb1 => 59
	i64 5522859530602327440, ; 95: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 29
	i64 5570799893513421663, ; 96: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 108
	i64 5573260873512690141, ; 97: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 133
	i64 5591791169662171124, ; 98: System.Linq.Parallel => 0x4d9a087135e137f4 => 111
	i64 5692067934154308417, ; 99: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 87
	i64 6022628403297368461, ; 100: Syncfusion.Maui.DataGrid.dll => 0x5394ac9fa0b7b98d => 56
	i64 6068057819846744445, ; 101: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 23
	i64 6072574083591391795, ; 102: Syncfusion.Maui.Inputs.dll => 0x54461df484b54a33 => 59
	i64 6200764641006662125, ; 103: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 23
	i64 6222399776351216807, ; 104: System.Text.Json.dll => 0x565a67a0ffe264a7 => 135
	i64 6225364669314151892, ; 105: en-US\Syncfusion.Maui.DataGrid.resources => 0x5664f02eefbcb5d4 => 34
	i64 6284145129771520194, ; 106: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 125
	i64 6357457916754632952, ; 107: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 36
	i64 6401687960814735282, ; 108: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 75
	i64 6478287442656530074, ; 109: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 11
	i64 6504860066809920875, ; 110: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 65
	i64 6548213210057960872, ; 111: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 71
	i64 6560151584539558821, ; 112: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 45
	i64 6743165466166707109, ; 113: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 19
	i64 6777482997383978746, ; 114: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 22
	i64 6786606130239981554, ; 115: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 105
	i64 6814185388980153342, ; 116: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 142
	i64 6876862101832370452, ; 117: System.Xml.Linq => 0x5f6f85a57d108914 => 140
	i64 6894844156784520562, ; 118: System.Numerics.Vectors => 0x5faf683aead1ad72 => 120
	i64 7083547580668757502, ; 119: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 123
	i64 7220009545223068405, ; 120: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 26
	i64 7270811800166795866, ; 121: System.Linq => 0x64e71ccf51a90a5a => 113
	i64 7377312882064240630, ; 122: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 99
	i64 7488575175965059935, ; 123: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 140
	i64 7489048572193775167, ; 124: System.ObjectModel => 0x67ee71ff6b419e3f => 121
	i64 7526939507201682620, ; 125: Syncfusion.Maui.DataSource.dll => 0x68750f9a349c2cbc => 57
	i64 7592577537120840276, ; 126: System.Diagnostics.Process => 0x695e410af5b2aa54 => 104
	i64 7603604403193000331, ; 127: en-US\Syncfusion.Maui.Inputs.resources => 0x69856deb48ea318b => 35
	i64 7654504624184590948, ; 128: System.Net.Http => 0x6a3a4366801b8264 => 116
	i64 7694700312542370399, ; 129: System.Net.Mail => 0x6ac9112a7e2cda5f => 117
	i64 7708790323521193081, ; 130: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 17
	i64 7714652370974252055, ; 131: System.Private.CoreLib => 0x6b0ff375198b9c17 => 145
	i64 7735176074855944702, ; 132: Microsoft.CSharp => 0x6b58dda848e391fe => 92
	i64 7735352534559001595, ; 133: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 89
	i64 7748489989163543248, ; 134: SF_Demo => 0x6b882a9785c36ad0 => 91
	i64 7836164640616011524, ; 135: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 64
	i64 8064050204834738623, ; 136: System.Collections.dll => 0x6fe942efa61731bf => 97
	i64 8083354569033831015, ; 137: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 74
	i64 8085230611270010360, ; 138: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 115
	i64 8087206902342787202, ; 139: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 103
	i64 8167236081217502503, ; 140: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 146
	i64 8185542183669246576, ; 141: System.Collections => 0x7198e33f4794aa70 => 97
	i64 8246048515196606205, ; 142: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 52
	i64 8264926008854159966, ; 143: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 104
	i64 8368701292315763008, ; 144: System.Security.Cryptography => 0x7423997c6fd56140 => 133
	i64 8400357532724379117, ; 145: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 82
	i64 8518412311883997971, ; 146: System.Collections.Immutable => 0x76377add7c28e313 => 94
	i64 8563666267364444763, ; 147: System.Private.Uri => 0x76d841191140ca5b => 122
	i64 8599632406834268464, ; 148: CommunityToolkit.Maui => 0x7758081c784b4930 => 37
	i64 8614108721271900878, ; 149: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 21
	i64 8626175481042262068, ; 150: Java.Interop => 0x77b654e585b55834 => 146
	i64 8638972117149407195, ; 151: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 92
	i64 8639588376636138208, ; 152: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 81
	i64 8677882282824630478, ; 153: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 21
	i64 8725526185868997716, ; 154: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 103
	i64 8941376889969657626, ; 155: System.Xml.XDocument => 0x7c1626e87187471a => 142
	i64 9045785047181495996, ; 156: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 31
	i64 9312692141327339315, ; 157: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 87
	i64 9324707631942237306, ; 158: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 63
	i64 9659729154652888475, ; 159: System.Text.RegularExpressions => 0x860e407c9991dd9b => 136
	i64 9678050649315576968, ; 160: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 68
	i64 9702891218465930390, ; 161: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 95
	i64 9808709177481450983, ; 162: Mono.Android.dll => 0x881f890734e555e7 => 148
	i64 9933555792566666578, ; 163: System.Linq.Queryable.dll => 0x89db145cf475c552 => 112
	i64 9956195530459977388, ; 164: Microsoft.Maui => 0x8a2b8315b36616ac => 50
	i64 9991543690424095600, ; 165: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 6
	i64 10038780035334861115, ; 166: System.Net.Http.dll => 0x8b50e941206af13b => 116
	i64 10051358222726253779, ; 167: System.Private.Xml => 0x8b7d990c97ccccd3 => 124
	i64 10065192478696882816, ; 168: Syncfusion.Maui.PullToRefresh.dll => 0x8baebf3b50a94280 => 61
	i64 10092835686693276772, ; 169: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 48
	i64 10143853363526200146, ; 170: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 3
	i64 10172042533944518731, ; 171: Syncfusion.Maui.GridCommon.dll => 0x8d2a5aca73ed684b => 58
	i64 10229024438826829339, ; 172: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 71
	i64 10364469296367737616, ; 173: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 125
	i64 10406448008575299332, ; 174: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 90
	i64 10430153318873392755, ; 175: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 69
	i64 10506226065143327199, ; 176: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 1
	i64 10512690409504421330, ; 177: Syncfusion.Maui.GridCommon => 0x91e4943a942ab5d2 => 58
	i64 10785150219063592792, ; 178: System.Net.Primitives => 0x95ac8cfb68830758 => 118
	i64 10822644899632537592, ; 179: System.Linq.Queryable => 0x9631c23204ca5ff8 => 112
	i64 10880838204485145808, ; 180: CommunityToolkit.Maui.dll => 0x970080b2a4d614d0 => 37
	i64 11002576679268595294, ; 181: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 44
	i64 11009005086950030778, ; 182: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 50
	i64 11103970607964515343, ; 183: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 12
	i64 11162124722117608902, ; 184: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 86
	i64 11220793807500858938, ; 185: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 15
	i64 11226290749488709958, ; 186: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 45
	i64 11340910727871153756, ; 187: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 70
	i64 11485890710487134646, ; 188: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 128
	i64 11518296021396496455, ; 189: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 13
	i64 11529969570048099689, ; 190: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 86
	i64 11530571088791430846, ; 191: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 43
	i64 11597940890313164233, ; 192: netstandard => 0xa0f429ca8d1805c9 => 144
	i64 11705530742807338875, ; 193: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 9
	i64 11707554492040141440, ; 194: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 111
	i64 12145679461940342714, ; 195: System.Text.Json => 0xa88e1f1ebcb62fba => 135
	i64 12269460666702402136, ; 196: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 94
	i64 12341818387765915815, ; 197: CommunityToolkit.Maui.Core.dll => 0xab46f26f152bf0a7 => 38
	i64 12451044538927396471, ; 198: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 73
	i64 12466513435562512481, ; 199: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 78
	i64 12475113361194491050, ; 200: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 36
	i64 12517810545449516888, ; 201: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 105
	i64 12538491095302438457, ; 202: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 66
	i64 12550732019250633519, ; 203: System.IO.Compression => 0xae2d28465e8e1b2f => 109
	i64 12681088699309157496, ; 204: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 14
	i64 12700543734426720211, ; 205: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 67
	i64 12823819093633476069, ; 206: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 27
	i64 12843321153144804894, ; 207: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 46
	i64 13068258254871114833, ; 208: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 131
	i64 13221551921002590604, ; 209: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 1
	i64 13222659110913276082, ; 210: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 15
	i64 13343850469010654401, ; 211: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 147
	i64 13381594904270902445, ; 212: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 9
	i64 13465488254036897740, ; 213: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 89
	i64 13467053111158216594, ; 214: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 29
	i64 13492260750531519258, ; 215: Syncfusion.Maui.ListView.dll => 0xbb3e23aae460631a => 60
	i64 13540124433173649601, ; 216: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 30
	i64 13545416393490209236, ; 217: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 13
	i64 13572454107664307259, ; 218: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 83
	i64 13717397318615465333, ; 219: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 98
	i64 13755568601956062840, ; 220: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 8
	i64 13814445057219246765, ; 221: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 11
	i64 13881769479078963060, ; 222: System.Console.dll => 0xc0a5f3cade5c6774 => 101
	i64 13959074834287824816, ; 223: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 73
	i64 13970307180132182141, ; 224: Syncfusion.Licensing => 0xc1e0805ccade287d => 53
	i64 14100563506285742564, ; 225: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 3
	i64 14124974489674258913, ; 226: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 66
	i64 14125464355221830302, ; 227: System.Threading.dll => 0xc407bafdbc707a9e => 138
	i64 14353329275190349375, ; 228: Syncfusion.Maui.ListView => 0xc73144edb7ef8e3f => 60
	i64 14461014870687870182, ; 229: System.Net.Requests.dll => 0xc8afd8683afdece6 => 119
	i64 14464374589798375073, ; 230: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 24
	i64 14522721392235705434, ; 231: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 5
	i64 14538127318538747197, ; 232: Syncfusion.Licensing.dll => 0xc9c1cdc518e77d3d => 53
	i64 14551742072151931844, ; 233: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 134
	i64 14556034074661724008, ; 234: CommunityToolkit.Maui.Core => 0xca016bdea6b19f68 => 38
	i64 14622043554576106986, ; 235: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 131
	i64 14669215534098758659, ; 236: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 41
	i64 14690985099581930927, ; 237: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 139
	i64 14705122255218365489, ; 238: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 16
	i64 14744092281598614090, ; 239: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 32
	i64 14852515768018889994, ; 240: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 70
	i64 14892012299694389861, ; 241: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 33
	i64 14904040806490515477, ; 242: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 0
	i64 14954917835170835695, ; 243: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 42
	i64 14987728460634540364, ; 244: System.IO.Compression.dll => 0xcfff1ba06622494c => 109
	i64 15024878362326791334, ; 245: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 115
	i64 15076659072870671916, ; 246: System.ObjectModel.dll => 0xd13b0d8c1620662c => 121
	i64 15111608613780139878, ; 247: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 17
	i64 15115185479366240210, ; 248: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 108
	i64 15133485256822086103, ; 249: System.Linq.dll => 0xd204f0a9127dd9d7 => 113
	i64 15227001540531775957, ; 250: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 40
	i64 15370334346939861994, ; 251: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 69
	i64 15391712275433856905, ; 252: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 42
	i64 15527772828719725935, ; 253: System.Console => 0xd77dbb1e38cd3d6f => 101
	i64 15536481058354060254, ; 254: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 4
	i64 15582737692548360875, ; 255: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 77
	i64 15609085926864131306, ; 256: System.dll => 0xd89e9cf3334914ea => 143
	i64 15661133872274321916, ; 257: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 141
	i64 15664356999916475676, ; 258: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 4
	i64 15743187114543869802, ; 259: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 12
	i64 15745825835632158716, ; 260: Syncfusion.Maui.Core => 0xda84692c2c05e7fc => 54
	i64 15783653065526199428, ; 261: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 5
	i64 15928521404965645318, ; 262: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 47
	i64 16154507427712707110, ; 263: System => 0xe03056ea4e39aa26 => 143
	i64 16288847719894691167, ; 264: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 18
	i64 16321164108206115771, ; 265: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 44
	i64 16649148416072044166, ; 266: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 52
	i64 16677317093839702854, ; 267: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 82
	i64 16856067890322379635, ; 268: System.Data.Common.dll => 0xe9ecc87060889373 => 102
	i64 16890310621557459193, ; 269: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 136
	i64 16942731696432749159, ; 270: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 25
	i64 16998075588627545693, ; 271: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 80
	i64 17008137082415910100, ; 272: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 95
	i64 17031351772568316411, ; 273: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 79
	i64 17062143951396181894, ; 274: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 98
	i64 17089008752050867324, ; 275: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 32
	i64 17207904987330348351, ; 276: SF_Demo.dll => 0xeecec26a227f853f => 91
	i64 17230721278011714856, ; 277: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 123
	i64 17260702271250283638, ; 278: System.Data.Common => 0xef8a5543bba6bc76 => 102
	i64 17342750010158924305, ; 279: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 10
	i64 17438153253682247751, ; 280: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 25
	i64 17514990004910432069, ; 281: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 8
	i64 17623389608345532001, ; 282: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 20
	i64 17702523067201099846, ; 283: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 31
	i64 17704177640604968747, ; 284: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 78
	i64 17710060891934109755, ; 285: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 76
	i64 17712670374920797664, ; 286: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 128
	i64 17777860260071588075, ; 287: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 130
	i64 18025913125965088385, ; 288: System.Threading => 0xfa28e87b91334681 => 138
	i64 18027900539557172254, ; 289: Syncfusion.Maui.Data => 0xfa2ff8065a60d41e => 55
	i64 18099568558057551825, ; 290: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 19
	i64 18121036031235206392, ; 291: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 79
	i64 18150477613000255151, ; 292: en-US/Syncfusion.Maui.Inputs.resources.dll => 0xfbe37339428f66af => 35
	i64 18164061295166068260, ; 293: Syncfusion.Maui.DataSource => 0xfc13b582b8cb9624 => 57
	i64 18245806341561545090, ; 294: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 93
	i64 18254913412602728065, ; 295: en-US/Syncfusion.Maui.DataGrid.resources.dll => 0xfd567b07b3b30e81 => 34
	i64 18305135509493619199, ; 296: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 81
	i64 18324163916253801303 ; 297: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 14
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [298 x i32] [
	i32 46, ; 0
	i32 148, ; 1
	i32 51, ; 2
	i32 110, ; 3
	i32 67, ; 4
	i32 84, ; 5
	i32 55, ; 6
	i32 7, ; 7
	i32 127, ; 8
	i32 137, ; 9
	i32 100, ; 10
	i32 10, ; 11
	i32 72, ; 12
	i32 127, ; 13
	i32 88, ; 14
	i32 18, ; 15
	i32 107, ; 16
	i32 80, ; 17
	i32 118, ; 18
	i32 48, ; 19
	i32 147, ; 20
	i32 137, ; 21
	i32 16, ; 22
	i32 64, ; 23
	i32 77, ; 24
	i32 117, ; 25
	i32 114, ; 26
	i32 122, ; 27
	i32 63, ; 28
	i32 6, ; 29
	i32 84, ; 30
	i32 106, ; 31
	i32 28, ; 32
	i32 49, ; 33
	i32 28, ; 34
	i32 76, ; 35
	i32 2, ; 36
	i32 20, ; 37
	i32 106, ; 38
	i32 65, ; 39
	i32 72, ; 40
	i32 93, ; 41
	i32 24, ; 42
	i32 75, ; 43
	i32 134, ; 44
	i32 68, ; 45
	i32 132, ; 46
	i32 62, ; 47
	i32 61, ; 48
	i32 27, ; 49
	i32 41, ; 50
	i32 2, ; 51
	i32 7, ; 52
	i32 88, ; 53
	i32 74, ; 54
	i32 120, ; 55
	i32 130, ; 56
	i32 90, ; 57
	i32 51, ; 58
	i32 39, ; 59
	i32 85, ; 60
	i32 145, ; 61
	i32 22, ; 62
	i32 132, ; 63
	i32 40, ; 64
	i32 141, ; 65
	i32 39, ; 66
	i32 144, ; 67
	i32 83, ; 68
	i32 43, ; 69
	i32 49, ; 70
	i32 119, ; 71
	i32 114, ; 72
	i32 124, ; 73
	i32 47, ; 74
	i32 33, ; 75
	i32 100, ; 76
	i32 110, ; 77
	i32 99, ; 78
	i32 126, ; 79
	i32 30, ; 80
	i32 139, ; 81
	i32 126, ; 82
	i32 0, ; 83
	i32 62, ; 84
	i32 85, ; 85
	i32 107, ; 86
	i32 129, ; 87
	i32 96, ; 88
	i32 96, ; 89
	i32 129, ; 90
	i32 54, ; 91
	i32 56, ; 92
	i32 26, ; 93
	i32 59, ; 94
	i32 29, ; 95
	i32 108, ; 96
	i32 133, ; 97
	i32 111, ; 98
	i32 87, ; 99
	i32 56, ; 100
	i32 23, ; 101
	i32 59, ; 102
	i32 23, ; 103
	i32 135, ; 104
	i32 34, ; 105
	i32 125, ; 106
	i32 36, ; 107
	i32 75, ; 108
	i32 11, ; 109
	i32 65, ; 110
	i32 71, ; 111
	i32 45, ; 112
	i32 19, ; 113
	i32 22, ; 114
	i32 105, ; 115
	i32 142, ; 116
	i32 140, ; 117
	i32 120, ; 118
	i32 123, ; 119
	i32 26, ; 120
	i32 113, ; 121
	i32 99, ; 122
	i32 140, ; 123
	i32 121, ; 124
	i32 57, ; 125
	i32 104, ; 126
	i32 35, ; 127
	i32 116, ; 128
	i32 117, ; 129
	i32 17, ; 130
	i32 145, ; 131
	i32 92, ; 132
	i32 89, ; 133
	i32 91, ; 134
	i32 64, ; 135
	i32 97, ; 136
	i32 74, ; 137
	i32 115, ; 138
	i32 103, ; 139
	i32 146, ; 140
	i32 97, ; 141
	i32 52, ; 142
	i32 104, ; 143
	i32 133, ; 144
	i32 82, ; 145
	i32 94, ; 146
	i32 122, ; 147
	i32 37, ; 148
	i32 21, ; 149
	i32 146, ; 150
	i32 92, ; 151
	i32 81, ; 152
	i32 21, ; 153
	i32 103, ; 154
	i32 142, ; 155
	i32 31, ; 156
	i32 87, ; 157
	i32 63, ; 158
	i32 136, ; 159
	i32 68, ; 160
	i32 95, ; 161
	i32 148, ; 162
	i32 112, ; 163
	i32 50, ; 164
	i32 6, ; 165
	i32 116, ; 166
	i32 124, ; 167
	i32 61, ; 168
	i32 48, ; 169
	i32 3, ; 170
	i32 58, ; 171
	i32 71, ; 172
	i32 125, ; 173
	i32 90, ; 174
	i32 69, ; 175
	i32 1, ; 176
	i32 58, ; 177
	i32 118, ; 178
	i32 112, ; 179
	i32 37, ; 180
	i32 44, ; 181
	i32 50, ; 182
	i32 12, ; 183
	i32 86, ; 184
	i32 15, ; 185
	i32 45, ; 186
	i32 70, ; 187
	i32 128, ; 188
	i32 13, ; 189
	i32 86, ; 190
	i32 43, ; 191
	i32 144, ; 192
	i32 9, ; 193
	i32 111, ; 194
	i32 135, ; 195
	i32 94, ; 196
	i32 38, ; 197
	i32 73, ; 198
	i32 78, ; 199
	i32 36, ; 200
	i32 105, ; 201
	i32 66, ; 202
	i32 109, ; 203
	i32 14, ; 204
	i32 67, ; 205
	i32 27, ; 206
	i32 46, ; 207
	i32 131, ; 208
	i32 1, ; 209
	i32 15, ; 210
	i32 147, ; 211
	i32 9, ; 212
	i32 89, ; 213
	i32 29, ; 214
	i32 60, ; 215
	i32 30, ; 216
	i32 13, ; 217
	i32 83, ; 218
	i32 98, ; 219
	i32 8, ; 220
	i32 11, ; 221
	i32 101, ; 222
	i32 73, ; 223
	i32 53, ; 224
	i32 3, ; 225
	i32 66, ; 226
	i32 138, ; 227
	i32 60, ; 228
	i32 119, ; 229
	i32 24, ; 230
	i32 5, ; 231
	i32 53, ; 232
	i32 134, ; 233
	i32 38, ; 234
	i32 131, ; 235
	i32 41, ; 236
	i32 139, ; 237
	i32 16, ; 238
	i32 32, ; 239
	i32 70, ; 240
	i32 33, ; 241
	i32 0, ; 242
	i32 42, ; 243
	i32 109, ; 244
	i32 115, ; 245
	i32 121, ; 246
	i32 17, ; 247
	i32 108, ; 248
	i32 113, ; 249
	i32 40, ; 250
	i32 69, ; 251
	i32 42, ; 252
	i32 101, ; 253
	i32 4, ; 254
	i32 77, ; 255
	i32 143, ; 256
	i32 141, ; 257
	i32 4, ; 258
	i32 12, ; 259
	i32 54, ; 260
	i32 5, ; 261
	i32 47, ; 262
	i32 143, ; 263
	i32 18, ; 264
	i32 44, ; 265
	i32 52, ; 266
	i32 82, ; 267
	i32 102, ; 268
	i32 136, ; 269
	i32 25, ; 270
	i32 80, ; 271
	i32 95, ; 272
	i32 79, ; 273
	i32 98, ; 274
	i32 32, ; 275
	i32 91, ; 276
	i32 123, ; 277
	i32 102, ; 278
	i32 10, ; 279
	i32 25, ; 280
	i32 8, ; 281
	i32 20, ; 282
	i32 31, ; 283
	i32 78, ; 284
	i32 76, ; 285
	i32 128, ; 286
	i32 130, ; 287
	i32 138, ; 288
	i32 55, ; 289
	i32 19, ; 290
	i32 79, ; 291
	i32 35, ; 292
	i32 57, ; 293
	i32 93, ; 294
	i32 34, ; 295
	i32 81, ; 296
	i32 14 ; 297
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

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
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ a8cd27e430e55df3e3c1e3a43d35c11d9512a2db"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
