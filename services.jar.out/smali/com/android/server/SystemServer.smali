.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$FlymeInjector;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = #android:style@Theme.DeviceDefault.System#t

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_CELLULAR_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.cellular.WearCellularMediatorService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field public static mcheckIfUpdateNeeded:Z = false

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field mFlymeWallpaperLifeService:Lcom/android/server/SystemService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SystemServer;->mcheckIfUpdateNeeded:Z

    .line 376
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 493
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 489
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 671
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 672
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.System#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 486
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 485
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 631
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 630
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 633
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 636
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 637
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 647
    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 648
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 649
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 650
    const/4 v1, 0x0

    .line 652
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 657
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 658
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 659
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-void

    .line 633
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_0

    .line 639
    :cond_1
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 653
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 666
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 629
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 625
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 498
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 503
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 504
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 516
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 519
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 536
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 541
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 542
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 547
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 542
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 551
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 555
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 559
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 563
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 567
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 570
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 573
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 577
    const/4 v0, -0x2

    .line 576
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 578
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 579
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 582
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 586
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 589
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 592
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 593
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->setRuntimeRestarted(Z)V

    .line 594
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 601
    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startInitQQconfigxml()V

    .line 603
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 604
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 605
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 611
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 615
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 616
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 621
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 595
    :catchall_0
    move-exception v0

    .line 596
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 595
    throw v0

    .line 606
    :catch_0
    move-exception v6

    .line 607
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 610
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 611
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 610
    throw v0
.end method

.method private startBootstrapServices()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/32 v10, 0x80000

    .line 687
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 690
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 691
    const-class v8, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 690
    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 692
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 693
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 699
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 703
    const-string/jumbo v5, "InitPowerManagement"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 704
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 705
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 708
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/lights/LightsService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 712
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 715
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x64

    invoke-virtual {v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 718
    const-string/jumbo v5, "vold.decrypt"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v5, "ro.alarm_boot"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 721
    const-string/jumbo v5, "trigger_restart_min_framework"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 722
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Detected encryption in progress - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 735
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 736
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Regionalization Service"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 738
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v5, "regionalization"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 742
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    const-string/jumbo v5, "StartPackageManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 743
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 744
    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_5

    move v5, v6

    :goto_1
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 743
    invoke-static {v8, v3, v5, v6}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 745
    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 746
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 747
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 752
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_2

    .line 753
    const-string/jumbo v5, "config.disable_otadexopt"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 755
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_2

    .line 756
    const-string/jumbo v5, "StartOtaDexOptService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 758
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5, v6}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 767
    .end local v1    # "disableOtaDexopt":Z
    :cond_2
    :goto_2
    const-string/jumbo v5, "StartUserManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 768
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 769
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 772
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 775
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 779
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 683
    return-void

    .line 724
    :cond_3
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 725
    const-string/jumbo v5, "SystemServer"

    const-string/jumbo v8, "Device encrypted - only parsing core apps"

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    .line 727
    :cond_4
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v5, :cond_0

    .line 732
    iput-boolean v6, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    :cond_5
    move v5, v7

    .line 744
    goto :goto_1

    .line 759
    .restart local v1    # "disableOtaDexopt":Z
    :catch_0
    move-exception v2

    .line 760
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 761
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 762
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 761
    throw v5
.end method

.method private startCoreServices()V
    .locals 3

    .prologue
    .line 787
    const-string/jumbo v1, "SystemServer"

    const-string/jumbo v2, "Diag Agent Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    new-instance v0, Lcom/android/server/diagagent/DiagRootAgentService;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/diagagent/DiagRootAgentService;-><init>(Landroid/content/Context;)V

    .line 789
    .local v0, "diagAgentService":Lcom/android/server/diagagent/DiagRootAgentService;
    const-string/jumbo v1, "diagagent"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 792
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/BatteryService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 795
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 796
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 797
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 796
    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 800
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 803
    sget-boolean v1, Landroid/safe/SafeFeature;->ENABLE:Z

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/safe/MobileSafeService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 785
    :cond_0
    return-void
.end method

.method private startInitQQconfigxml()V
    .locals 15

    .prologue
    .line 1842
    const-string/jumbo v12, "ro.hmct.volte.operator"

    const-string/jumbo v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "cmcc"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1843
    const-string/jumbo v12, "xiaoqian"

    const-string/jumbo v13, "startInitQQconfigxml!1"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "/system/media/browser_config.xml"

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1845
    .local v11, "oldfile":Ljava/io/File;
    new-instance v10, Ljava/io/File;

    const-string/jumbo v12, "/data/cust/xml/browser_config.xml"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v10, "newfile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1847
    const-string/jumbo v12, "xiaoqian"

    const-string/jumbo v13, "old browser_config.xml is not exist!"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    return-void

    .line 1850
    :cond_0
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1851
    const-string/jumbo v12, "xiaoqian"

    const-string/jumbo v13, "new browser_config.xml is exist!"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    return-void

    .line 1855
    :cond_1
    const/4 v1, 0x0

    .line 1857
    .local v1, "byteread":I
    new-instance v8, Ljava/io/File;

    const-string/jumbo v12, "/data/cust"

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v8, "newdir0":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    const-string/jumbo v12, "/data/cust/xml/"

    invoke-direct {v9, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1859
    .local v9, "newdir1":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 1860
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 1861
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1862
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v8, v12, v13}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1863
    invoke-virtual {v9}, Ljava/io/File;->mkdir()Z

    .line 1864
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1865
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v9, v12, v13}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1866
    const-string/jumbo v12, "xiaoqian"

    const-string/jumbo v13, "mkdir"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1869
    const/4 v6, 0x0

    .line 1870
    .local v6, "inStream":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 1872
    .local v4, "fs":Ljava/io/FileOutputStream;
    :try_start_0
    const-string/jumbo v12, "xiaoqian"

    const-string/jumbo v13, "oldfile is exist!"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1874
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .local v7, "inStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1875
    .local v5, "fs":Ljava/io/FileOutputStream;
    const/16 v12, 0x400

    :try_start_2
    new-array v0, v12, [B

    .line 1877
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v12, -0x1

    if-eq v1, v12, :cond_5

    .line 1878
    const/4 v12, 0x0

    invoke-virtual {v5, v0, v12, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1882
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .local v4, "fs":Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 1883
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v7    # "inStream":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    const-string/jumbo v12, "xiaoqian"

    const-string/jumbo v13, "found file error"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1890
    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1891
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1841
    .end local v1    # "byteread":I
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "newdir0":Ljava/io/File;
    .end local v9    # "newdir1":Ljava/io/File;
    .end local v10    # "newfile":Ljava/io/File;
    .end local v11    # "oldfile":Ljava/io/File;
    :cond_4
    :goto_2
    return-void

    .line 1880
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteread":I
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v8    # "newdir0":Ljava/io/File;
    .restart local v9    # "newdir1":Ljava/io/File;
    .restart local v10    # "newfile":Ljava/io/File;
    .restart local v11    # "oldfile":Ljava/io/File;
    :cond_5
    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v10, v12, v13}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1881
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1890
    if-eqz v7, :cond_6

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 1891
    :cond_6
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1892
    :catch_1
    move-exception v3

    .line 1893
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v12, "SystemServer"

    const-string/jumbo v13, "failed to close inStream"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1885
    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .local v4, "fs":Ljava/io/FileOutputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 1886
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    const-string/jumbo v12, "xiaoqian"

    const-string/jumbo v13, "read config xml error"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1890
    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1891
    :cond_7
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 1892
    :catch_3
    move-exception v3

    .line 1893
    const-string/jumbo v12, "SystemServer"

    const-string/jumbo v13, "failed to close inStream"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1892
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v3

    .line 1893
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "SystemServer"

    const-string/jumbo v13, "failed to close inStream"

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1888
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 1890
    :goto_4
    if-eqz v6, :cond_8

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 1891
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1888
    :cond_9
    :goto_5
    throw v12

    .line 1892
    :catch_5
    move-exception v3

    .line 1893
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v13, "SystemServer"

    const-string/jumbo v14, "failed to close inStream"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1888
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .local v6, "inStream":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .local v4, "fs":Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1882
    .local v4, "fs":Ljava/io/FileOutputStream;
    .local v6, "inStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_1

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .local v6, "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 1885
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .end local v6    # "inStream":Ljava/io/FileInputStream;
    .restart local v5    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "inStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fs":Ljava/io/FileOutputStream;
    .local v4, "fs":Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7    # "inStream":Ljava/io/FileInputStream;
    .restart local v6    # "inStream":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private startOtherServices()V
    .locals 104

    .prologue
    .line 814
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 815
    .local v6, "context":Landroid/content/Context;
    const/16 v91, 0x0

    .line 816
    .local v91, "vibrator":Lcom/android/server/VibratorService;
    const/16 v72, 0x0

    .line 817
    .local v72, "mountService":Landroid/os/storage/IMountService;
    const/16 v73, 0x0

    .line 818
    .local v73, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v78, 0x0

    .line 819
    .local v78, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v74, 0x0

    .line 820
    .local v74, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v29, 0x0

    .line 821
    .local v29, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v76, 0x0

    .line 822
    .local v76, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v85, 0x0

    .line 823
    .local v85, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v100, 0x0

    .line 824
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v83, 0x0

    .line 825
    .local v83, "serial":Lcom/android/server/SerialService;
    const/16 v79, 0x0

    .line 826
    .local v79, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v26, 0x0

    .line 827
    .local v26, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v61, 0x0

    .line 828
    .local v61, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v89, 0x0

    .line 829
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v31, 0x0

    .line 830
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    .line 831
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v58, 0x0

    .line 832
    .local v58, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v56, 0x0

    .line 833
    .local v56, "factoryTestService":Landroid/factorytest/FactoryTestService;
    const/16 v98, 0x0

    .line 834
    .local v98, "wigigP2pService":Ljava/lang/Object;
    const/16 v99, 0x0

    .line 835
    .local v99, "wigigService":Ljava/lang/Object;
    const/16 v24, 0x0

    .line 836
    .local v24, "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 837
    .local v48, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 838
    .local v36, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 839
    .local v39, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 840
    .local v49, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 841
    .local v43, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 842
    .local v41, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 843
    .local v42, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 844
    .local v44, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 845
    const/4 v5, 0x0

    .line 844
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 846
    .local v40, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 847
    .local v47, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 848
    const/4 v5, 0x0

    .line 847
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 849
    .local v46, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 850
    const/4 v5, 0x0

    .line 849
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 851
    .local v51, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    .line 852
    const/4 v5, 0x0

    .line 851
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v50

    .line 853
    .local v50, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 854
    const/4 v5, 0x0

    .line 853
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 855
    .local v45, "disableSamplingProfiler":Z
    const-string/jumbo v4, "config.disable_consumerir"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 856
    .local v38, "disableConsumerIr":Z
    const-string/jumbo v4, "config.disable_vrmanager"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 857
    .local v52, "disableVrManager":Z
    const-string/jumbo v4, "config.disable_cameraservice"

    .line 858
    const/4 v5, 0x0

    .line 857
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 860
    .local v37, "disableCameraService":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v63

    .line 861
    .local v63, "isEmulator":Z
    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 864
    .local v55, "enableWigig":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 867
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 868
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 869
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 873
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 874
    new-instance v90, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v90

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_33

    .line 875
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v90, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v90

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 876
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 878
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 879
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 880
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 882
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 884
    if-nez v37, :cond_0

    .line 885
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 890
    :cond_0
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 891
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 892
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 894
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 896
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 899
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Cache Backup Delete"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v25, Lcom/android/server/CacheBackupDeleteService;

    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Lcom/android/server/CacheBackupDeleteService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_34

    .line 901
    .local v25, "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    :try_start_2
    const-string/jumbo v4, "cache_backup"

    .end local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    move-object/from16 v0, v25

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 905
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "FactoryTestService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    new-instance v57, Landroid/factorytest/FactoryTestService;

    move-object/from16 v0, v57

    invoke-direct {v0, v6}, Landroid/factorytest/FactoryTestService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_35

    .line 907
    .local v57, "factoryTestService":Landroid/factorytest/FactoryTestService;
    :try_start_3
    const-string/jumbo v4, "factory_test"

    .end local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    move-object/from16 v0, v57

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 909
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 911
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 913
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 914
    new-instance v92, Lcom/android/server/VibratorService;

    move-object/from16 v0, v92

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_36

    .line 915
    .local v92, "vibrator":Lcom/android/server/VibratorService;
    :try_start_4
    const-string/jumbo v4, "vibrator"

    .end local v91    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v92

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 916
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 918
    if-nez v38, :cond_1

    .line 919
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 920
    new-instance v32, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_37

    .line 921
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_5
    const-string/jumbo v4, "consumer_ir"

    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 922
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_38

    move-object/from16 v31, v32

    .line 925
    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :cond_1
    :try_start_6
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 927
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 929
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v94

    .line 931
    .local v94, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v94

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 932
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 934
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 935
    new-instance v62, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v62

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_37

    .line 936
    .local v62, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_7
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 938
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 940
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->checkIfUpdateNeeded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 941
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 942
    const-string/jumbo v4, "FirmwareUpdate"

    const-string/jumbo v5, "firmware need to update"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/SystemServer;->mcheckIfUpdateNeeded:Z

    .line 948
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3e

    const/4 v4, 0x1

    move v5, v4

    .line 949
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_3f

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v101, v0

    .line 947
    move-object/from16 v0, v62

    move/from16 v1, v101

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v100

    .line 950
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v100

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 951
    const-string/jumbo v4, "input"

    move-object/from16 v0, v62

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 952
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 954
    if-nez v52, :cond_3

    .line 955
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 957
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 960
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v100

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 962
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v62

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 963
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/input/InputManagerService;->start()V

    .line 966
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 971
    if-eqz v63, :cond_40

    .line 972
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :goto_2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 986
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 988
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 990
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 992
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 994
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v24, v25

    .end local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .local v24, "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    move-object/from16 v56, v57

    .end local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .local v56, "factoryTestService":Landroid/factorytest/FactoryTestService;
    move-object/from16 v89, v90

    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v62

    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v61, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v91, v92

    .line 1000
    .end local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .end local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v92    # "vibrator":Lcom/android/server/VibratorService;
    .end local v94    # "watchdog":Lcom/android/server/Watchdog;
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3
    const/16 v86, 0x0

    .line 1001
    .local v86, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v81, 0x0

    .line 1002
    .local v81, "notification":Landroid/app/INotificationManager;
    const/16 v64, 0x0

    .line 1003
    .local v64, "location":Lcom/android/server/LocationManagerService;
    const/16 v33, 0x0

    .line 1004
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v66, 0x0

    .line 1005
    .local v66, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v21, 0x0

    .line 1006
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v68, 0x0

    .line 1009
    .local v68, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 1010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1012
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1014
    :try_start_8
    const-string/jumbo v4, "accessibility"

    .line 1015
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 1014
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 1019
    :goto_4
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1023
    :cond_4
    :try_start_9
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 1028
    :goto_5
    invoke-static {v6}, Lcom/android/server/FirmwareUpdate;->updateIfNeeded(Landroid/content/Context;)V

    .line 1029
    invoke-static {}, Lcom/android/server/FirmwareUpdate;->triggerTouchButtonUpdate()Z

    .line 1032
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    .line 1033
    if-nez v48, :cond_5

    .line 1034
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1051
    .end local v72    # "mountService":Landroid/os/storage/IMountService;
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1053
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_6

    .line 1054
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1056
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    .line 1060
    :goto_7
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1063
    :cond_6
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1065
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    .line 1069
    :goto_8
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1071
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_34

    .line 1072
    if-nez v43, :cond_8

    .line 1073
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1075
    :try_start_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1077
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1076
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v66

    .line 1081
    .end local v66    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_9
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1083
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1087
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_8
    if-nez v49, :cond_9

    const-string v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_d
    new-instance v87, Lcom/android/server/statusbar/FlymeExtStatusBarManagerService;

    move-object/from16 v0, v87

    move-object/from16 v1, v100

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/FlymeExtStatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 1098
    .end local v86    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v87, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_e
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeStatusBarManagerService()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_32

    move-object/from16 v86, v87

    .line 1102
    .end local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1105
    :cond_9
    if-nez v43, :cond_a

    .line 1106
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1108
    :try_start_f
    const-string/jumbo v4, "clipboard"

    .line 1109
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 1108
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 1113
    :goto_b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1116
    :cond_a
    if-nez v41, :cond_b

    .line 1117
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1119
    :try_start_10
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v73

    .line 1120
    .local v73, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static/range {p0 .. p0}, Lcom/android/server/SystemServer$FlymeInjector;->addNetworkManagementServiceFlyme(Lcom/android/server/SystemServer;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_9

    .line 1124
    .end local v73    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1127
    :cond_b
    if-nez v43, :cond_c

    if-eqz v50, :cond_45

    .line 1131
    :cond_c
    :goto_d
    if-nez v41, :cond_11

    .line 1132
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1134
    :try_start_11
    new-instance v77, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v77

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_a

    .line 1135
    .end local v76    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v77, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_12
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_31

    move-object/from16 v76, v77

    .line 1139
    .end local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1141
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1143
    :try_start_13
    move-object/from16 v0, v73

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v78

    .line 1144
    .local v78, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v78

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_b

    .line 1148
    .end local v78    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1150
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1152
    :try_start_14
    new-instance v75, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1152
    move-object/from16 v0, v75

    move-object/from16 v1, v78

    move-object/from16 v2, v73

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_c

    .line 1154
    .end local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v75, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_15
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_30

    move-object/from16 v74, v75

    .line 1158
    .end local v75    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_10
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1160
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1165
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1168
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 1167
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1170
    if-nez v44, :cond_d

    .line 1171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1174
    :cond_d
    if-eqz v55, :cond_e

    .line 1176
    :try_start_16
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    new-instance v96, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    .line 1179
    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    .line 1180
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v101

    invoke-virtual/range {v101 .. v101}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v101

    .line 1178
    move-object/from16 v0, v96

    move-object/from16 v1, v101

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1182
    .local v96, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 1181
    move-object/from16 v0, v96

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v97

    .line 1183
    .local v97, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v101, 0x0

    aput-object v5, v4, v101

    move-object/from16 v0, v97

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 1184
    .local v35, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v98

    .line 1185
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v98

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1189
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    .line 1188
    move-object/from16 v0, v96

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v95

    .line 1190
    .local v95, "wigigClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v101, 0x0

    aput-object v5, v4, v101

    move-object/from16 v0, v95

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 1191
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v99

    .line 1192
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v99

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_d

    .line 1199
    .end local v35    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v95    # "wigigClass":Ljava/lang/Class;
    .end local v96    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v97    # "wigigP2pClass":Ljava/lang/Class;
    .end local v98    # "wigigP2pService":Ljava/lang/Object;
    .end local v99    # "wigigService":Ljava/lang/Object;
    :cond_e
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1200
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1199
    if-eqz v4, :cond_10

    .line 1201
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1204
    :cond_10
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1206
    :try_start_17
    new-instance v30, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v30

    move-object/from16 v1, v73

    move-object/from16 v2, v78

    move-object/from16 v3, v74

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_e

    .line 1208
    .end local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_18
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1209
    move-object/from16 v0, v78

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1210
    move-object/from16 v0, v74

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_2f

    move-object/from16 v29, v30

    .line 1214
    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1216
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1218
    :try_start_19
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v85

    .line 1220
    .local v85, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 1219
    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_f

    .line 1224
    .end local v85    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1227
    :cond_11
    if-nez v43, :cond_12

    .line 1228
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1230
    :try_start_1a
    const-string/jumbo v4, "updatelock"

    .line 1231
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 1230
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_10

    .line 1235
    :goto_15
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1238
    :cond_12
    if-nez v43, :cond_13

    .line 1239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1247
    :cond_13
    if-eqz v72, :cond_14

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_47

    .line 1256
    :cond_14
    :goto_16
    invoke-virtual/range {v56 .. v56}, Landroid/factorytest/FactoryTestService;->systemReady()V

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1259
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1258
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v81

    .line 1260
    .local v81, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v74

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1264
    if-nez v39, :cond_15

    .line 1265
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1267
    :try_start_1b
    new-instance v65, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_12

    .line 1268
    .end local v64    # "location":Lcom/android/server/LocationManagerService;
    .local v65, "location":Lcom/android/server/LocationManagerService;
    :try_start_1c
    const-string/jumbo v4, "location"

    move-object/from16 v0, v65

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_2e

    move-object/from16 v64, v65

    .line 1272
    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    :goto_17
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1274
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1276
    :try_start_1d
    new-instance v34, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_13

    .line 1277
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1e
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_2d

    move-object/from16 v33, v34

    .line 1281
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_18
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1284
    :cond_15
    if-nez v43, :cond_16

    if-eqz v46, :cond_48

    .line 1294
    :cond_16
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v43, :cond_17

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_49

    :cond_17
    :goto_1a
    const-string v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1305
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1307
    if-nez v43, :cond_18

    .line 1308
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1310
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1315
    :cond_18
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1319
    :try_start_1f
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v61

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1318
    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_15

    .line 1323
    :goto_1b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1325
    if-nez v43, :cond_1d

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1331
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1332
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1333
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1332
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1331
    if-eqz v4, :cond_1b

    .line 1335
    :cond_1a
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1337
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1340
    :cond_1b
    if-nez v47, :cond_1c

    .line 1341
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1344
    :try_start_20
    new-instance v84, Lcom/android/server/SerialService;

    move-object/from16 v0, v84

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_16

    .line 1345
    .end local v83    # "serial":Lcom/android/server/SerialService;
    .local v84, "serial":Lcom/android/server/SerialService;
    :try_start_21
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v84

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_2c

    move-object/from16 v83, v84

    .line 1349
    .end local v84    # "serial":Lcom/android/server/SerialService;
    :goto_1c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1353
    :cond_1c
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1352
    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1355
    :try_start_22
    new-instance v59, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v59

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_17

    .line 1356
    .end local v58    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v59, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_23
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v59

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_2b

    move-object/from16 v58, v59

    .line 1361
    .end local v59    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1364
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1366
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1370
    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1374
    if-nez v43, :cond_24

    .line 1375
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1379
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 1380
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableAppWidgetService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1379
    if-eqz v4, :cond_21

    .line 1382
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1385
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1389
    :cond_22
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1390
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1393
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1394
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1397
    :cond_24
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1399
    :try_start_24
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_18

    .line 1403
    :goto_1e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1405
    if-nez v45, :cond_25

    .line 1406
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1412
    :try_start_25
    const-string/jumbo v4, "samplingprofiler"

    .line 1413
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1412
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_19

    .line 1417
    :goto_1f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1420
    :cond_25
    if-nez v41, :cond_26

    if-eqz v42, :cond_4a

    .line 1431
    .end local v79    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_26
    :goto_20
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1433
    :try_start_26
    new-instance v27, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1b

    .line 1434
    .end local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_27
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_29

    move-object/from16 v26, v27

    .line 1438
    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_21
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1440
    if-nez v41, :cond_27

    .line 1441
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1443
    :try_start_28
    new-instance v23, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1c

    .line 1447
    :goto_22
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1450
    :cond_27
    if-nez v41, :cond_28

    if-eqz v43, :cond_4b

    .line 1455
    :cond_28
    :goto_23
    if-nez v43, :cond_29

    .line 1457
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_29
    goto/16 :goto_flyme_0

    if-nez v43, :cond_2a

    const-string v4, "StartAssetAtlasService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_29
    new-instance v22, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1d

    .line 1464
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v22, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_2a
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_28

    move-object/from16 v21, v22

    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    :goto_24
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2a
    :goto_flyme_0
    if-nez v43, :cond_2b

    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1477
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1480
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1484
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1488
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1492
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 1493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1496
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 1497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1500
    :cond_30
    if-nez v43, :cond_33

    .line 1501
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1503
    :try_start_2b
    new-instance v69, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v69

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1e

    .line 1504
    .end local v68    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v69, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_2c
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_27

    move-object/from16 v68, v69

    .line 1508
    .end local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_25
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1510
    if-nez v51, :cond_31

    .line 1511
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1514
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1515
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1518
    :cond_32
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1520
    :try_start_2d
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1f

    .line 1524
    :goto_26
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1527
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1532
    .end local v81    # "notification":Landroid/app/INotificationManager;
    :cond_34
    if-nez v43, :cond_35

    if-eqz v40, :cond_4c

    .line 1536
    :cond_35
    :goto_27
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1538
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.bluetooth.WearBluetoothService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1539
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.wifi.WearWifiMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1540
    const-string/jumbo v4, "config.enable_cellmediator"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1541
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.cellular.WearCellularMediatorService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1543
    :cond_36
    if-nez v43, :cond_37

    .line 1544
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1550
    :cond_37
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v82

    .line 1551
    .local v82, "safeMode":Z
    if-eqz v82, :cond_4d

    .line 1552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1554
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1561
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v4, p0

    move-object/from16 v5, v100

    invoke-static {v4, v5}, Lcom/android/server/SystemServer$FlymeInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "device_provisioned"

    const/16 v101, 0x0

    move/from16 v0, v101

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_38

    .line 1564
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    .line 1563
    if-eqz v4, :cond_39

    .line 1565
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1570
    :cond_39
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1572
    :try_start_2e
    invoke-virtual/range {v91 .. v91}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_20

    .line 1576
    :goto_29
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1578
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1579
    if-eqz v66, :cond_3a

    .line 1581
    :try_start_2f
    invoke-interface/range {v66 .. v66}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_21

    .line 1586
    :cond_3a
    :goto_2a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1593
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1597
    if-eqz v55, :cond_3b

    .line 1599
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    invoke-virtual/range {v98 .. v98}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v97

    .line 1601
    .restart local v97    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v101, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v102, 0x0

    aput-object v101, v5, v102

    move-object/from16 v0, v97

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v67

    .line 1602
    .local v67, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1603
    const/16 v101, 0x1f4

    .line 1602
    move/from16 v0, v101

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v101, 0x0

    aput-object v5, v4, v101

    move-object/from16 v0, v67

    move-object/from16 v1, v98

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1605
    invoke-virtual/range {v99 .. v99}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v95

    .line 1606
    .restart local v95    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v101, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v102, 0x0

    aput-object v101, v5, v102

    move-object/from16 v0, v95

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v67

    .line 1607
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1608
    const/16 v101, 0x1f4

    .line 1607
    move/from16 v0, v101

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v101, 0x0

    aput-object v5, v4, v101

    move-object/from16 v0, v67

    move-object/from16 v1, v99

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_22

    .line 1615
    .end local v67    # "m":Ljava/lang/reflect/Method;
    .end local v95    # "wigigClass":Ljava/lang/Class;
    .end local v97    # "wigigP2pClass":Ljava/lang/Class;
    :cond_3b
    :goto_2b
    :try_start_31
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_23

    .line 1619
    :goto_2c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1621
    if-eqz v82, :cond_3c

    .line 1622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1628
    :cond_3c
    invoke-virtual/range {v100 .. v100}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    .line 1629
    .local v28, "config":Landroid/content/res/Configuration;
    new-instance v70, Landroid/util/DisplayMetrics;

    invoke-direct/range {v70 .. v70}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1630
    .local v70, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/view/WindowManager;

    .line 1631
    .local v93, "w":Landroid/view/WindowManager;
    invoke-interface/range {v93 .. v93}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1632
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v70

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1635
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v88

    .line 1636
    .local v88, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v88 .. v88}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 1637
    invoke-virtual/range {v88 .. v88}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1640
    :cond_3d
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1643
    :try_start_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1644
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_24

    .line 1648
    :goto_2d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1650
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1652
    :try_start_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_25

    .line 1656
    :goto_2e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1658
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1661
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v82

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_26

    .line 1665
    :goto_2f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1668
    move-object/from16 v8, v73

    .line 1669
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v9, v78

    .line 1670
    .local v9, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v10, v74

    .line 1671
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v29

    .line 1672
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v76

    .line 1673
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v64

    .line 1674
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v33

    .line 1675
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v79

    .line 1676
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v26

    .line 1677
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v16, v21

    .line 1678
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v61

    .line 1679
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v89

    .line 1680
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v68

    .line 1681
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v71, v20

    .line 1688
    .local v71, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v101, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v0, v101

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 813
    return-void

    .line 948
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v28    # "config":Landroid/content/res/Configuration;
    .end local v70    # "metrics":Landroid/util/DisplayMetrics;
    .end local v71    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v82    # "safeMode":Z
    .end local v88    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v93    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v58    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "mountService":Landroid/os/storage/IMountService;
    .local v73, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v76    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v78, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v79    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v83    # "serial":Lcom/android/server/SerialService;
    .local v85, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v94    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v98    # "wigigP2pService":Ljava/lang/Object;
    .restart local v99    # "wigigService":Ljava/lang/Object;
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_3e
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    .line 949
    :cond_3f
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 973
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_40
    :try_start_35
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_41

    .line 974
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_0

    goto/16 :goto_2

    .line 995
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v53

    .local v53, "e":Ljava/lang/RuntimeException;
    move-object/from16 v24, v25

    .end local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    move-object/from16 v56, v57

    .end local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    move-object/from16 v89, v90

    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v62

    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v91, v92

    .line 996
    .end local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .end local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .end local v61    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v92    # "vibrator":Lcom/android/server/VibratorService;
    .end local v94    # "watchdog":Lcom/android/server/Watchdog;
    :goto_30
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v53

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 975
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .restart local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v94    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_41
    :try_start_36
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 976
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 975
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 977
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 978
    :cond_42
    if-eqz v36, :cond_43

    .line 979
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 981
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_0

    goto/16 :goto_2

    .line 1016
    .end local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .end local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .end local v62    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v92    # "vibrator":Lcom/android/server/VibratorService;
    .end local v94    # "watchdog":Lcom/android/server/Watchdog;
    .end local v100    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v64    # "location":Lcom/android/server/LocationManagerService;
    .restart local v66    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v68    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v81, "notification":Landroid/app/INotificationManager;
    .restart local v86    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v54

    .line 1017
    .local v54, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1024
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v54

    .line 1025
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1040
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_44
    :try_start_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1042
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 1041
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_3

    move-result-object v72

    .local v72, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_6

    .line 1043
    .local v72, "mountService":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v54

    .line 1044
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1057
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v72    # "mountService":Landroid/os/storage/IMountService;
    :catch_4
    move-exception v54

    .line 1058
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1066
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v54

    .line 1067
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1078
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v54

    .line 1079
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1099
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v66    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_7
    move-exception v54

    .line 1100
    .end local v86    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_31
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1110
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v54

    .line 1111
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1121
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v73    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_9
    move-exception v54

    .line 1122
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1128
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_d

    .line 1136
    :catch_a
    move-exception v54

    .line 1137
    .end local v76    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_32
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1145
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v78    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_b
    move-exception v54

    .line 1146
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1155
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v54

    .line 1156
    .end local v74    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 1163
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_46
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1194
    .end local v98    # "wigigP2pService":Ljava/lang/Object;
    .end local v99    # "wigigService":Ljava/lang/Object;
    :catch_d
    move-exception v54

    .line 1195
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 1211
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v54

    .line 1212
    .end local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 1221
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v85    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_f
    move-exception v54

    .line 1222
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 1232
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v54

    .line 1233
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 1248
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_47
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v102, 0x80000

    move-wide/from16 v0, v102

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1250
    :try_start_38
    invoke-interface/range {v72 .. v72}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_38} :catch_11

    .line 1253
    :goto_35
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_16

    .line 1251
    :catch_11
    move-exception v60

    .local v60, "ignored":Landroid/os/RemoteException;
    goto :goto_35

    .line 1269
    .end local v60    # "ignored":Landroid/os/RemoteException;
    .local v81, "notification":Landroid/app/INotificationManager;
    :catch_12
    move-exception v54

    .line 1270
    .end local v64    # "location":Lcom/android/server/LocationManagerService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1278
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v54

    .line 1279
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1285
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_48
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1287
    :try_start_39
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_14

    .line 1291
    :goto_38
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_19

    .line 1288
    :catch_14
    move-exception v54

    .line 1289
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    .line 1298
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_49
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mFlymeWallpaperLifeService:Lcom/android/server/SystemService;

    .line 1300
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1a

    .line 1320
    :catch_15
    move-exception v54

    .line 1321
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1346
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v54

    .line 1347
    .end local v83    # "serial":Lcom/android/server/SerialService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 1358
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v54

    .line 1359
    .end local v58    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 1400
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v54

    .line 1401
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1414
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v54

    .line 1415
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1421
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_4a
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1423
    :try_start_3a
    new-instance v80, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v80

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_1a

    .line 1424
    .end local v79    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v80, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_3b
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_2a

    move-object/from16 v79, v80

    .line 1428
    .end local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_3b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_20

    .line 1425
    .restart local v79    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_1a
    move-exception v54

    .line 1426
    .end local v79    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 1435
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v54

    .line 1436
    .end local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1444
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v54

    .line 1445
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1452
    .end local v54    # "e":Ljava/lang/Throwable;
    :cond_4b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_23

    .line 1465
    :catch_1d
    move-exception v54

    .line 1466
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1505
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v54

    .line 1506
    .end local v68    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v54    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1521
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v54

    .line 1522
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1533
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v81    # "notification":Landroid/app/INotificationManager;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_27

    .line 1557
    .restart local v82    # "safeMode":Z
    :cond_4d
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_28

    .line 1573
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_20
    move-exception v54

    .line 1574
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1582
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v54

    .line 1583
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1609
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v54

    .line 1610
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1616
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v54

    .line 1617
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1645
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v28    # "config":Landroid/content/res/Configuration;
    .restart local v70    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v88    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v93    # "w":Landroid/view/WindowManager;
    :catch_24
    move-exception v54

    .line 1646
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1653
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v54

    .line 1654
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1662
    .end local v54    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v54

    .line 1663
    .restart local v54    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1505
    .end local v28    # "config":Landroid/content/res/Configuration;
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v70    # "metrics":Landroid/util/DisplayMetrics;
    .end local v82    # "safeMode":Z
    .end local v88    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v93    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v81    # "notification":Landroid/app/INotificationManager;
    :catch_27
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v68, v69

    .end local v69    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v68, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_3f

    .line 1465
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v68, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_28
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v21, v22

    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_3e

    .line 1435
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_29
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v26, v27

    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v26, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_3d

    .line 1425
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v26, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2a
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v79, v80

    .end local v80    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v79, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_3c

    .line 1358
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v59    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v79, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2b
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v58, v59

    .end local v59    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v58, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_3a

    .line 1346
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v58, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v84    # "serial":Lcom/android/server/SerialService;
    :catch_2c
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v83, v84

    .end local v84    # "serial":Lcom/android/server/SerialService;
    .local v83, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_39

    .line 1278
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v83, "serial":Lcom/android/server/SerialService;
    :catch_2d
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_37

    .line 1269
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v65    # "location":Lcom/android/server/LocationManagerService;
    :catch_2e
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v64, v65

    .end local v65    # "location":Lcom/android/server/LocationManagerService;
    .local v64, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_36

    .line 1211
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v64, "location":Lcom/android/server/LocationManagerService;
    .local v81, "notification":Landroid/app/INotificationManager;
    .restart local v85    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_2f
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v29, v30

    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v29, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_34

    .line 1155
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v29, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v75    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v98    # "wigigP2pService":Ljava/lang/Object;
    .restart local v99    # "wigigService":Ljava/lang/Object;
    :catch_30
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v74, v75

    .end local v75    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v74, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_33

    .line 1136
    .end local v54    # "e":Ljava/lang/Throwable;
    .local v74, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v78    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_31
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v76, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_32

    .line 1099
    .end local v54    # "e":Ljava/lang/Throwable;
    .restart local v73    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v76, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_32
    move-exception v54

    .restart local v54    # "e":Ljava/lang/Throwable;
    move-object/from16 v86, v87

    .end local v87    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v86, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_31

    .line 995
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v54    # "e":Ljava/lang/Throwable;
    .end local v64    # "location":Lcom/android/server/LocationManagerService;
    .end local v68    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v81    # "notification":Landroid/app/INotificationManager;
    .end local v86    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v24, "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v56, "factoryTestService":Landroid/factorytest/FactoryTestService;
    .local v61, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "mountService":Landroid/os/storage/IMountService;
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v91    # "vibrator":Lcom/android/server/VibratorService;
    .local v100, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_33
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_30

    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_34
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v89, v90

    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v89, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_30

    .end local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_35
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v24, v25

    .end local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .local v24, "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    move-object/from16 v89, v90

    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_30

    .end local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_36
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v24, v25

    .end local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    move-object/from16 v56, v57

    .end local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .local v56, "factoryTestService":Landroid/factorytest/FactoryTestService;
    move-object/from16 v89, v90

    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_30

    .end local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v91    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "vibrator":Lcom/android/server/VibratorService;
    :catch_37
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v24, v25

    .end local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    move-object/from16 v56, v57

    .end local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    move-object/from16 v89, v90

    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v91, v92

    .end local v92    # "vibrator":Lcom/android/server/VibratorService;
    .local v91, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_30

    .end local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .end local v53    # "e":Ljava/lang/RuntimeException;
    .end local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .end local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v91    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v92    # "vibrator":Lcom/android/server/VibratorService;
    :catch_38
    move-exception v53

    .restart local v53    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v24, v25

    .end local v25    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    .restart local v24    # "cachebackupService":Lcom/android/server/CacheBackupDeleteService;
    move-object/from16 v56, v57

    .end local v57    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    .restart local v56    # "factoryTestService":Landroid/factorytest/FactoryTestService;
    move-object/from16 v31, v32

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v89, v90

    .end local v90    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v89    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v91, v92

    .end local v92    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v91    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_30
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1828
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1829
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1830
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1829
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1831
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1833
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1827
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1837
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1838
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    return-void
.end method

# virtual methods
.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
