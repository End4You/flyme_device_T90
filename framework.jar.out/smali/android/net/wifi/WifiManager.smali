.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$ActionListener;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$WpsCallback;
    }
.end annotation


# static fields
.field public static final ACTION_AUTH_PASSWORD_WRONG:Ljava/lang/String; = "Auth_password_wrong"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_DISABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_DISABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_ENABLE"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field public static final ACTION_WIFI_DISCONNECT_IN_PROGRESS:Ljava/lang/String; = "wifi_disconnect_in_progress"

.field private static final BASE:I = 0x25000

.field public static final BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final ERROR:I = 0x0

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_CAPABILITIES:Ljava/lang/String; = "networkCapabilities"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_PASSPOINT_ICON_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_PASSPOINT_ICON_DATA:Ljava/lang/String; = "icon"

.field public static final EXTRA_PASSPOINT_ICON_FILE:Ljava/lang/String; = "file"

.field public static final EXTRA_PASSPOINT_WNM_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_PASSPOINT_WNM_DELAY:Ljava/lang/String; = "delay"

.field public static final EXTRA_PASSPOINT_WNM_ESS:Ljava/lang/String; = "ess"

.field public static final EXTRA_PASSPOINT_WNM_METHOD:Ljava/lang/String; = "method"

.field public static final EXTRA_PASSPOINT_WNM_PPOINT_MATCH:Ljava/lang/String; = "match"

.field public static final EXTRA_PASSPOINT_WNM_URL:Ljava/lang/String; = "url"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_RESULTS_UPDATED:Ljava/lang/String; = "resultsUpdated"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_FAILURE_REASON:Ljava/lang/String; = "wifi_ap_error_code"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_CREDENTIAL_EVENT_TYPE:Ljava/lang/String; = "et"

.field public static final EXTRA_WIFI_CREDENTIAL_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final INVALID_ARGS:I = 0x8

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MAX_RSSI_HMCT:I = -0x41

.field private static final MIN_RSSI:I = -0x64

.field private static final MIN_RSSI_HMCT:I = -0x5f

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final NOT_AUTHORIZED:I = 0x9

.field public static final PASSPOINT_ICON_RECEIVED_ACTION:Ljava/lang/String; = "android.net.wifi.PASSPOINT_ICON_RECEIVED"

.field public static final PASSPOINT_WNM_FRAME_RECEIVED_ACTION:Ljava/lang/String; = "android.net.wifi.PASSPOINT_WNM_FRAME_RECEIVED"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAP_START_FAILURE_GENERAL:I = 0x0

.field public static final SAP_START_FAILURE_NO_CHANNEL:I = 0x1

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_AP_STATE_RESTART:I = 0xf

.field public static final WIFI_AP_SUB_SYSTEM_RESTART:Ljava/lang/String; = "android.net.wifi.WIFI_AP_SUB_SYSTEM_RESTART"

.field public static final WIFI_CREDENTIAL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

.field public static final WIFI_CREDENTIAL_FORGOT:I = 0x1

.field public static final WIFI_CREDENTIAL_SAVED:I = 0x0

.field public static final WIFI_FEATURE_ADDITIONAL_STA:I = 0x800

.field public static final WIFI_FEATURE_AP_STA:I = 0x8000

.field public static final WIFI_FEATURE_BATCH_SCAN:I = 0x200

.field public static final WIFI_FEATURE_D2AP_RTT:I = 0x100

.field public static final WIFI_FEATURE_D2D_RTT:I = 0x80

.field public static final WIFI_FEATURE_EPR:I = 0x4000

.field public static final WIFI_FEATURE_HAL_EPNO:I = 0x40000

.field public static final WIFI_FEATURE_INFRA:I = 0x1

.field public static final WIFI_FEATURE_INFRA_5G:I = 0x2

.field public static final WIFI_FEATURE_LINK_LAYER_STATS:I = 0x10000

.field public static final WIFI_FEATURE_LOGGER:I = 0x20000

.field public static final WIFI_FEATURE_MOBILE_HOTSPOT:I = 0x10

.field public static final WIFI_FEATURE_NAN:I = 0x40

.field public static final WIFI_FEATURE_P2P:I = 0x8

.field public static final WIFI_FEATURE_PASSPOINT:I = 0x4

.field public static final WIFI_FEATURE_PNO:I = 0x400

.field public static final WIFI_FEATURE_SCANNER:I = 0x20

.field public static final WIFI_FEATURE_TDLS:I = 0x1000

.field public static final WIFI_FEATURE_TDLS_OFFCHANNEL:I = 0x2000

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_NO_LOCKS_HELD:I = 0x0

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static final sServiceHandlerDispatchLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private mConnected:Ljava/util/concurrent/CountDownLatch;

.field private mContext:Landroid/content/Context;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mListenerMapLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field mService:Landroid/net/wifi/IWifiManager;

.field private final mTargetSdkVersion:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiManager;)I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic -get1(Landroid/net/wifi/WifiManager;)Lcom/android/internal/util/AsyncChannel;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/wifi/WifiManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/net/wifi/WifiManager;->sServiceHandlerDispatchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiManager;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1919
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sServiceHandlerDispatchLock:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiManager;->mListenerKey:I

    .line 727
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    .line 728
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;

    .line 752
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 753
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 754
    iput-object p3, p0, Landroid/net/wifi/WifiManager;->mLooper:Landroid/os/Looper;

    .line 755
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    .line 751
    return-void
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 882
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 883
    :catch_0
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static calculateSignalLevel(II)I
    .locals 3
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    .line 1568
    const/16 v1, -0x64

    if-gt p0, v1, :cond_0

    .line 1569
    const/4 v1, 0x0

    return v1

    .line 1570
    :cond_0
    const/16 v1, -0x37

    if-lt p0, v1, :cond_1

    .line 1571
    add-int/lit8 v1, p1, -0x1

    return v1

    .line 1574
    :cond_1
    add-int/lit8 v1, p1, -0x1

    int-to-float v0, v1

    .line 1575
    .local v0, "outputRange":F
    add-int/lit8 v1, p0, 0x64

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 1573
    const/high16 v2, 0x42340000    # 45.0f

    .line 1575
    div-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static calculateSignalLevelHmct(II)I
    .locals 5
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    const/16 v4, -0x41

    const/16 v3, -0x4b

    const/16 v2, -0x55

    const/16 v1, -0x5f

    const/4 v0, 0x0

    .line 2837
    if-gt p0, v1, :cond_0

    .line 2838
    return v0

    .line 2839
    :cond_0
    if-lt p0, v4, :cond_1

    .line 2840
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 2842
    :cond_1
    if-lt p0, v1, :cond_2

    if-ge p0, v2, :cond_2

    .line 2843
    return v0

    .line 2844
    :cond_2
    if-lt p0, v2, :cond_3

    if-ge p0, v3, :cond_3

    .line 2845
    const/4 v0, 0x1

    return v0

    .line 2846
    :cond_3
    if-lt p0, v3, :cond_4

    if-ge p0, v4, :cond_4

    .line 2847
    const/4 v0, 0x2

    return v0

    .line 2849
    :cond_4
    return v0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    .prologue
    .line 1589
    sub-int v0, p0, p1

    return v0
.end method

.method private declared-synchronized getChannel()Lcom/android/internal/util/AsyncChannel;
    .locals 5

    .prologue
    monitor-enter p0

    .line 2048
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v3, :cond_1

    .line 2049
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 2050
    .local v2, "messenger":Landroid/os/Messenger;
    if-nez v2, :cond_0

    .line 2051
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 2052
    const-string/jumbo v4, "getWifiServiceMessenger() returned null!  This is invalid."

    .line 2051
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "messenger":Landroid/os/Messenger;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 2055
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2056
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    .line 2058
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v3}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V

    .line 2059
    .local v1, "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2061
    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2066
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_0
    :try_start_3
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 2062
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 2063
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "interrupted wait at init"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private getSupportedFeatures()I
    .locals 2

    .prologue
    .line 1142
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 1149
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putListener(Ljava/lang/Object;)I
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2027
    if-nez p1, :cond_0

    return v1

    .line 2029
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2031
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiManager;->mListenerKey:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mListenerKey:I

    .line 2032
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 2033
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2035
    return v0

    .line 2029
    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I

    .prologue
    .line 2039
    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 2040
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2041
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2042
    .local v0, "listener":Ljava/lang/Object;
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2043
    return-object v0

    .line 2040
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 843
    if-nez p1, :cond_0

    .line 844
    return v0

    .line 846
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 847
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method public addPasspointManagementObject(Ljava/lang/String;)I
    .locals 2
    .param p1, "mo"    # Ljava/lang/String;

    .prologue
    .line 896
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addPasspointManagementObject(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 1699
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1700
    const/4 v1, 0x1

    return v1

    .line 1701
    :catch_0
    move-exception v0

    .line 1702
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 1667
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1668
    :catch_0
    move-exception v0

    .line 1669
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    .line 2202
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2500e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2201
    return-void
.end method

.method public clearBlacklist()Z
    .locals 2

    .prologue
    .line 1716
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1717
    const/4 v1, 0x1

    return v1

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2107
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2108
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x25001

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2106
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2086
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2089
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    .line 2090
    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    .line 2089
    const v2, 0x25001

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2085
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2472
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$MulticastLock;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 2438
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$WifiLock;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 2454
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$WifiLock;)V

    return-object v0
.end method

.method public deauthenticateNetwork(JZ)V
    .locals 3
    .param p1, "holdoff"    # J
    .param p3, "ess"    # Z

    .prologue
    .line 954
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->deauthenticateNetwork(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    return-void

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2162
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2163
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x25011

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2161
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 3
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 2173
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "SSID cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2175
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2172
    return-void

    .line 2176
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1035
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 1048
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    const/4 v1, 0x1

    return v1

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableAggressiveHandover(I)V
    .locals 2
    .param p1, "enabled"    # I

    .prologue
    .line 2705
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableAggressiveHandover(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2703
    return-void

    .line 2706
    :catch_0
    move-exception v0

    .line 2707
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public enableNetwork(IZ)Z
    .locals 7
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1003
    if-eqz p2, :cond_0

    iget v5, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_0

    move v1, v4

    .line 1004
    .local v1, "pin":Z
    :cond_0
    if-eqz v1, :cond_1

    .line 1005
    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 1009
    .local v2, "request":Landroid/net/NetworkRequest;
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/android/server/net/NetworkPinner;->pin(Landroid/content/Context;Landroid/net/NetworkRequest;)V

    .line 1014
    .end local v2    # "request":Landroid/net/NetworkRequest;
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v4, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1019
    .local v3, "success":Z
    if-eqz v1, :cond_2

    if-eqz v3, :cond_3

    .line 1023
    :cond_2
    :goto_0
    return v3

    .line 1015
    .end local v3    # "success":Z
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    .line 1020
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v3    # "success":Z
    :cond_3
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->unpin()V

    goto :goto_0
.end method

.method public enableVerboseLogging(I)V
    .locals 4
    .param p1, "verbose"    # I

    .prologue
    .line 2679
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2677
    :goto_0
    return-void

    .line 2680
    :catch_0
    move-exception v0

    .line 2682
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableVerboseLogging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableWifiConnectivityManager(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2821
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableWifiConnectivityManager(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2819
    return-void

    .line 2822
    :catch_0
    move-exception v0

    .line 2823
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public factoryReset()V
    .locals 2

    .prologue
    .line 2770
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2768
    return-void

    .line 2771
    :catch_0
    move-exception v0

    .line 2772
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2665
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 2666
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2669
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2663
    return-void

    .line 2668
    :catchall_0
    move-exception v0

    .line 2669
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2668
    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2148
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2149
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x25004

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2147
    return-void
.end method

.method public getAggressiveHandover()I
    .locals 2

    .prologue
    .line 2718
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAggressiveHandover()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2719
    :catch_0
    move-exception v0

    .line 2720
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAllowScansWithTraffic()I
    .locals 2

    .prologue
    .line 2742
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAllowScansWithTraffic()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2743
    :catch_0
    move-exception v0

    .line 2744
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBatchedScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1338
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2227
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2228
    :catch_0
    move-exception v0

    .line 2229
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 779
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 1362
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    .prologue
    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 3
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1264
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_0

    return-object v2

    .line 1266
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1267
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    monitor-exit p0

    return-object v1

    .line 1266
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1442
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getCountryCode()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1443
    .local v0, "country":Ljava/lang/String;
    return-object v0

    .line 1444
    .end local v0    # "country":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1445
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    .line 2783
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2784
    :catch_0
    move-exception v0

    .line 2785
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 1503
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 2

    .prologue
    .line 2809
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getEnableAutoJoinWhenAssociated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2810
    :catch_0
    move-exception v0

    .line 2811
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getFrequencyBand()I
    .locals 2

    .prologue
    .line 1477
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1478
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 822
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 798
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1378
    const/16 v1, 0x37

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 1380
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .prologue
    .line 1554
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x25014

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 1553
    return-void
.end method

.method public getVerboseLoggingLevel()I
    .locals 2

    .prologue
    .line 2693
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2694
    :catch_0
    move-exception v0

    .line 2695
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1653
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 1626
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 2214
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2215
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiStaSapConcurrency()Z
    .locals 2

    .prologue
    .line 2757
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiStaSapConcurrency()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2758
    :catch_0
    move-exception v0

    .line 2759
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 1532
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1350
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hasCarrierConfiguredNetworks()Z
    .locals 2

    .prologue
    .line 788
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->hasCarrierConfiguredNetworks()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 2656
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2657
    const/4 v1, 0x1

    return v1

    .line 2658
    :catch_0
    move-exception v0

    .line 2659
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public is5GHzBandSupported()Z
    .locals 1

    .prologue
    .line 1155
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAdditionalStaSupported()Z
    .locals 1

    .prologue
    .line 1228
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1325
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceToApRttSupported()Z
    .locals 1

    .prologue
    .line 1213
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceToDeviceRttSupported()Z
    .locals 1

    .prologue
    .line 1205
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1490
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1491
    :catch_0
    move-exception v0

    .line 1492
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isEnhancedPowerReportingSupported()Z
    .locals 1

    .prologue
    .line 1250
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2644
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2645
    :catch_0
    move-exception v0

    .line 2646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isNanSupported()Z
    .locals 1

    .prologue
    .line 1196
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isOffChannelTdlsSupported()Z
    .locals 1

    .prologue
    .line 1243
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isP2pSupported()Z
    .locals 1

    .prologue
    .line 1170
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPasspointSupported()Z
    .locals 1

    .prologue
    .line 1163
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPortableHotspotSupported()Z
    .locals 1

    .prologue
    .line 1179
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPreferredNetworkOffloadSupported()Z
    .locals 1

    .prologue
    .line 1220
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2

    .prologue
    .line 1396
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1397
    :catch_0
    move-exception v0

    .line 1398
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isTdlsSupported()Z
    .locals 1

    .prologue
    .line 1235
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 1641
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 1544
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiScannerSupported()Z
    .locals 1

    .prologue
    .line 1188
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .prologue
    .line 940
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 912
    .local p2, "mos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->modifyPasspointManagementObject(Ljava/lang/String;Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 1091
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v1, :cond_0

    .line 1092
    const/4 v1, 0x0

    return v1

    .line 1094
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public queryPasspointIcon(JLjava/lang/String;)V
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    .prologue
    .line 926
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->queryPasspointIcon(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    return-void

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    const/4 v1, 0x1

    return v1

    .line 1080
    :catch_0
    move-exception v0

    .line 1081
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 1063
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    const/4 v1, 0x1

    return v1

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 970
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 2130
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2131
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x25007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2129
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 1413
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1414
    :catch_0
    move-exception v0

    .line 1415
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 2
    .param p1, "enabled"    # I

    .prologue
    .line 2730
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setAllowScansWithTraffic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2728
    return-void

    .line 2731
    :catch_0
    move-exception v0

    .line 2732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1428
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1426
    return-void

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEnableAutoJoinWhenAssociated(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2797
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setEnableAutoJoinWhenAssociated(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2798
    :catch_0
    move-exception v0

    .line 2799
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1460
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    return-void

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .locals 3
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    .prologue
    .line 1746
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    return-void

    .line 1747
    :catch_0
    move-exception v0

    .line 1748
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 1760
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    return-void

    .line 1761
    :catch_0
    move-exception v0

    .line 1762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1682
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    const/4 v1, 0x1

    return v1

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 1607
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    const/4 v1, 0x1

    return v1

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setWifiEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1517
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1518
    :catch_0
    move-exception v0

    .line 1519
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)Z
    .locals 1
    .param p1, "workSource"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1311
    const/4 v0, 0x0

    return v0
.end method

.method public startScan()Z
    .locals 4

    .prologue
    .line 1282
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    const/4 v1, 0x1

    return v1

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1293
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1294
    const/4 v1, 0x1

    return v1

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    .line 2190
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2191
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getChannel()Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x2500a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2189
    return-void
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 866
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 867
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 869
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method
