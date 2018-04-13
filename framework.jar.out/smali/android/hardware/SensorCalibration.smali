.class public Landroid/hardware/SensorCalibration;
.super Ljava/lang/Object;
.source "SensorCalibration.java"


# static fields
.field private static final GSENSOR_CALI_DATA:Ljava/lang/String; = "gsensorcali.dat"

.field private static final GSENSOR_CALI_DEFAULT:Ljava/lang/String; = "0.0\n0.0\n0.0"

.field private static final GSENSOR_CALI_STABLE:Ljava/lang/String; = "stable.sys.gsensorcali"

.field private static final LSENSOR_CALI_DATA:Ljava/lang/String; = "lsensorcali.dat"

.field private static final LSENSOR_CALI_DEFAULT:Ljava/lang/String; = "1.0\n"

.field private static final LSENSOR_CALI_STABLE:Ljava/lang/String; = "stable.sys.lsensorcali"

.field private static final SENSOR_CALI_DIR:Ljava/lang/String; = "/data/system/sensor"

.field private static final TAG:Ljava/lang/String; = "SensorCalibration"

.field private static mCalibration:Landroid/hardware/SensorCalibration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/SensorCalibration;->mCalibration:Landroid/hardware/SensorCalibration;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const-string/jumbo v0, "gsensorcali.dat"

    const-string/jumbo v1, "stable.sys.gsensorcali"

    const-string/jumbo v2, "0.0\n0.0\n0.0"

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/SensorCalibration;->createCaliFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "lsensorcali.dat"

    const-string/jumbo v1, "stable.sys.lsensorcali"

    const-string/jumbo v2, "1.0\n"

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/SensorCalibration;->createCaliFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private createCaliFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "propStr"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/sensor"

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .local v0, "mSensorCali":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string/jumbo v1, "SensorCalibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createCaliFile() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Landroid/hardware/SensorCalibration;->createSensorCaliRootDir()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SensorCalibration;->createSensorCaliFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createSensorCaliFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "propStr"    # Ljava/lang/String;
    .param p3, "def"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v3, Ljava/io/File;

    const-string/jumbo v5, "/data/system/sensor"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .local v3, "mSensorData":Ljava/io/File;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    return-void

    .line 91
    :cond_2
    :try_start_0
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getStable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "data":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 94
    const-string/jumbo v5, "SensorCalibration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " createSensorCaliFile data = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 96
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 98
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 100
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 103
    .local v4, "se":Ljava/lang/SecurityException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private createSensorCaliRootDir()Z
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/system/sensor"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "rootDir":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    const/4 v1, 0x1

    return v1

    .line 75
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 78
    :cond_1
    const-string/jumbo v1, "SensorCalibration"

    const-string/jumbo v2, "createSensorCaliRootDir()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    return v1
.end method

.method public static getInstance()Landroid/hardware/SensorCalibration;
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v0, Landroid/hardware/SensorCalibration;->mCalibration:Landroid/hardware/SensorCalibration;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/hardware/SensorCalibration;

    invoke-direct {v0}, Landroid/hardware/SensorCalibration;-><init>()V

    sput-object v0, Landroid/hardware/SensorCalibration;->mCalibration:Landroid/hardware/SensorCalibration;

    .line 58
    :cond_0
    sget-object v0, Landroid/hardware/SensorCalibration;->mCalibration:Landroid/hardware/SensorCalibration;

    return-object v0
.end method
