.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field public static final ALARM_PATH:Ljava/lang/String; = "alarm_path"

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

.field private static final DEFAULT_SMSRING_URI:Landroid/net/Uri;

.field private static final DEFAULT_SMSRING_URI_2:Landroid/net/Uri;

.field public static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field public static final KEY_DEFAULT_ALARM:Ljava/lang/String; = "alarm_alert_default"

.field public static final KEY_DEFAULT_NOTIFICATION:Ljava/lang/String; = "notification_sound_default"

.field public static final KEY_DEFAULT_RINGTONE:Ljava/lang/String; = "ringtone_default"

.field public static final KEY_DEFAULT_RINGTONE_2:Ljava/lang/String; = "ringtone_2_default"

.field public static final KEY_DEFAULT_SMSRING:Ljava/lang/String; = "smsringtone_default"

.field public static final KEY_DEFAULT_SMSRING_2:Ljava/lang/String; = "smsringtone_2_default"

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field public static final NOTIFICATION_PATH:Ljava/lang/String; = "notification_path"

.field private static final PROP_DEFAULT_ALAEM_PROP:Ljava/lang/String; = "ro.config.alarm_alert"

.field private static final PROP_DEFAULT_NOTIFICATION_PROP:Ljava/lang/String; = "ro.config.notification_sound"

.field private static final PROP_DEFAULT_RINGTONE_PROP:Ljava/lang/String; = "ro.config.ringtone"

.field public static final RINGTONE_2:Ljava/lang/String; = "ringtone_2"

.field public static final RING_PATH:Ljava/lang/String; = "ring_path"

.field public static final RING_PATH_2:Ljava/lang/String; = "ring_path_2"

.field public static final SMSRING_PATH:Ljava/lang/String; = "smsring_path"

.field public static final SMSRING_PATH_2:Ljava/lang/String; = "smsring_path_2"

.field public static final SMS_RINGTONE:Ljava/lang/String; = "smsringtone"

.field public static final SMS_RINGTONE_2:Ljava/lang/String; = "smsringtone_2"

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_RINGTONE_2:I = 0x8

.field public static final TYPE_SMSRING:I = 0x10

.field public static final TYPE_SMSRING_2:I = 0x20

.field public static final URI_COLUMN_INDEX:I = 0x2

.field private static final needReInitType:[I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    new-array v0, v7, [Ljava/lang/String;

    .line 228
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 230
    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    .line 227
    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 233
    new-array v0, v7, [Ljava/lang/String;

    .line 234
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 236
    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    .line 233
    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 269
    const-string/jumbo v0, "ringtone_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    .line 270
    const-string/jumbo v0, "smsringtone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMSRING_URI:Landroid/net/Uri;

    .line 271
    const-string/jumbo v0, "smsringtone_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMSRING_URI_2:Landroid/net/Uri;

    .line 783
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/RingtoneManager;->needReInitType:[I

    .line 76
    return-void

    .line 783
    nop

    :array_0
    .array-data 4
        0x1
        0x8
        0x10
        0x20
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 294
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 304
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 305
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 306
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 294
    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 318
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 319
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 316
    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 627
    if-nez p0, :cond_0

    return-object v2

    .line 629
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 630
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 633
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 636
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 638
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 641
    :cond_2
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static doRingtoneInitRetry(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 790
    const/4 v2, 0x1

    .line 791
    .local v2, "result":Z
    const/4 v0, 0x0

    .end local v2    # "result":Z
    .local v0, "i":I
    :goto_0
    sget-object v4, Landroid/media/RingtoneManager;->needReInitType:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 792
    sget-object v4, Landroid/media/RingtoneManager;->needReInitType:[I

    aget v4, v4, v0

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 793
    .local v3, "uri":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 794
    sget-object v4, Landroid/media/RingtoneManager;->needReInitType:[I

    aget v4, v4, v0

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->doRingtoneInitRetrySingle(Landroid/content/Context;I)Z

    move-result v1

    .line 795
    .local v1, "res":Z
    and-int/2addr v2, v1

    .line 791
    .end local v1    # "res":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    return v2
.end method

.method private static doRingtoneInitRetrySingle(Landroid/content/Context;I)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x1

    .line 807
    const/16 v1, 0x10

    if-eq p1, v1, :cond_0

    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    .line 808
    :cond_0
    const-string/jumbo v1, "content://settings/system/notification_sound"

    invoke-static {p0, p1, v1}, Landroid/media/RingtoneManager;->reInitRingtoneSetting(Landroid/content/Context;ILjava/lang/String;)V

    .line 809
    return v2

    .line 812
    :cond_1
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneFileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->getInternalRingtoneUriByName(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    .line 813
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 814
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Landroid/media/RingtoneManager;->reInitRingtoneSetting(Landroid/content/Context;ILjava/lang/String;)V

    .line 815
    return v2

    .line 817
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue

    invoke-static/range {p0 .. p1}, Landroid/media/MzRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    const/4 v4, 0x0

    .line 745
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "setting":Ljava/lang/String;
    if-nez v2, :cond_0

    return-object v4

    .line 750
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 750
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "uriString":Ljava/lang/String;
    const-string/jumbo v5, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Get actual default ringtone uri= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    if-eqz v3, :cond_1

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 757
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 758
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 759
    .local v0, "defaultUri":Landroid/net/Uri;
    if-nez v0, :cond_5

    .line 760
    const-string/jumbo v5, "RingtoneManager"

    const-string/jumbo v6, "need do ringtone retry init."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {p0}, Landroid/media/RingtoneManager;->doRingtoneInitRetry(Landroid/content/Context;)Z

    move-result v1

    .line 762
    .local v1, "res":Z
    const-string/jumbo v5, "RingtoneManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "do ringtone retry init end res = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 764
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 763
    invoke-static {v5, v2, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 770
    .end local v0    # "defaultUri":Landroid/net/Uri;
    .end local v1    # "res":Z
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :cond_3
    return-object v4

    .line 754
    :cond_4
    invoke-static {p0, v2, p1}, Landroid/media/RingtoneManager;->getNewRinetoneFromPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 766
    .restart local v0    # "defaultUri":Landroid/net/Uri;
    :cond_5
    const-string/jumbo v5, "RingtoneManager"

    const-string/jumbo v6, "no need do ringtone retry init."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getActualPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x1

    .line 1108
    const/4 v6, 0x0

    .line 1109
    .local v6, "c":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1112
    .local v8, "path":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1113
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 1114
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1115
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 1120
    .end local v8    # "path":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1124
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 1117
    .restart local v8    # "path":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1118
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "find ringtone path ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    if-eqz v6, :cond_1

    .line 1121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1119
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1120
    if-eqz v6, :cond_2

    .line 1121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1119
    :cond_2
    throw v0
.end method

.method private static getBaseType(I)I
    .locals 2
    .param p0, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 1418
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1419
    return v1

    .line 1420
    :cond_0
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_1

    .line 1421
    const/16 v0, 0x8

    return v0

    .line 1422
    :cond_1
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_2

    .line 1423
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_3

    .line 1425
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 1424
    :cond_3
    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_2

    .line 1426
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_4

    .line 1427
    const/4 v0, 0x4

    return v0

    .line 1429
    :cond_4
    return v1
.end method

.method public static getCacheForType(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1213
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1214
    sget-object v0, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    return-object v0

    .line 1215
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1216
    sget-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    return-object v0

    .line 1217
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1218
    sget-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    return-object v0

    .line 1220
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getDefaultRingtoneFileName(I)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 866
    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 867
    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    .line 868
    :cond_0
    const-string/jumbo v1, "ro.config.ringtone"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 869
    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    .line 870
    const-string/jumbo v1, "ro.config.notification_sound"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 871
    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    .line 872
    const-string/jumbo v1, "ro.config.alarm_alert"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 874
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    .line 1308
    const/4 v0, 0x0

    .line 1309
    .local v0, "defaultUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1310
    .local v2, "uriString":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1311
    .local v1, "resolver":Landroid/content/ContentResolver;
    sparse-switch p1, :sswitch_data_0

    .line 1345
    const-string/jumbo v3, "RingtoneManager"

    const-string/jumbo v4, "getDefaultRingtoneUri with unsupport type!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    return-object v5

    .line 1313
    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1314
    const-string/jumbo v4, "ringtone_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1313
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1348
    .local v2, "uriString":Ljava/lang/String;
    :goto_0
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1349
    .end local v0    # "defaultUri":Landroid/net/Uri;
    :goto_1
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDefaultRingtoneUri: type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", default uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    return-object v0

    .line 1318
    .restart local v0    # "defaultUri":Landroid/net/Uri;
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1319
    const-string/jumbo v4, "notification_sound_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1318
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1323
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1324
    const-string/jumbo v4, "alarm_alert_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1323
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1329
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1330
    const-string/jumbo v4, "ringtone_2_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1329
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1334
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1335
    const-string/jumbo v4, "smsringtone_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1334
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1339
    .local v2, "uriString":Ljava/lang/String;
    :sswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1340
    const-string/jumbo v4, "smsringtone_2_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1339
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "uriString":Ljava/lang/String;
    goto :goto_0

    .line 1348
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "defaultUri":Landroid/net/Uri;
    goto :goto_1

    .line 1311
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getDefaultSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 830
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 831
    const-string/jumbo v0, "ringtone_default"

    return-object v0

    .line 832
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 833
    const-string/jumbo v0, "notification_sound_default"

    return-object v0

    .line 834
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 835
    const-string/jumbo v0, "alarm_alert_default"

    return-object v0

    .line 836
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 837
    const-string/jumbo v0, "ringtone_2_default"

    return-object v0

    .line 838
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 839
    const-string/jumbo v0, "smsringtone_default"

    return-object v0

    .line 840
    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    .line 841
    const-string/jumbo v0, "smsringtone_2_default"

    return-object v0

    .line 843
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, -0x1

    .line 1244
    if-nez p0, :cond_0

    .line 1245
    return v1

    .line 1246
    :cond_0
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1247
    const/4 v0, 0x1

    return v0

    .line 1248
    :cond_1
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1249
    const/4 v0, 0x2

    return v0

    .line 1250
    :cond_2
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1251
    const/4 v0, 0x4

    return v0

    .line 1253
    :cond_3
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1254
    const/16 v0, 0x8

    return v0

    .line 1255
    :cond_4
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMSRING_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1256
    const/16 v0, 0x10

    return v0

    .line 1257
    :cond_5
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMSRING_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1258
    const/16 v0, 0x20

    return v0

    .line 1261
    :cond_6
    return v1
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1275
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1276
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    .line 1277
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1278
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 1279
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1280
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    .line 1282
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 1283
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1284
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 1285
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMSRING_URI:Landroid/net/Uri;

    return-object v0

    .line 1286
    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    .line 1287
    sget-object v0, Landroid/media/RingtoneManager;->DEFAULT_SMSRING_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1290
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getInternalRingtoneUriByName(Landroid/content/Context;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 882
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 883
    :cond_0
    const/4 v6, 0x0

    .line 884
    .local v6, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 885
    .local v9, "newUri":Landroid/net/Uri;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 886
    .local v1, "AudioUri":Landroid/net/Uri;
    const-string/jumbo v3, "_data=?"

    .line 888
    .local v3, "Condition":Ljava/lang/String;
    const-string/jumbo v12, "/ringtones/"

    .line 889
    .local v12, "path":Ljava/lang/String;
    const/4 v0, 0x2

    if-ne v0, p2, :cond_4

    .line 890
    const-string/jumbo v12, "/notifications/"

    .line 894
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/system/media/audio"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 897
    .local v8, "file":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 898
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 899
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 900
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 901
    .local v10, "id":J
    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 906
    .end local v9    # "newUri":Landroid/net/Uri;
    .end local v10    # "id":J
    :cond_2
    if-eqz v6, :cond_3

    .line 907
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 911
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_3
    :goto_1
    return-object v9

    .line 891
    .end local v8    # "file":Ljava/lang/String;
    .local v6, "c":Landroid/database/Cursor;
    .restart local v9    # "newUri":Landroid/net/Uri;
    :cond_4
    const/4 v0, 0x4

    if-ne v0, p2, :cond_1

    .line 892
    const-string/jumbo v12, "/alarms/"

    goto :goto_0

    .line 903
    .end local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "file":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 904
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v2, "find ringtone path ERROR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 906
    if-eqz v6, :cond_3

    .line 907
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 905
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 906
    if-eqz v6, :cond_5

    .line 907
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 905
    :cond_5
    throw v0
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 569
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 570
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 571
    const-string/jumbo v5, "title_key"

    const/4 v4, 0x0

    move-object v0, p0

    .line 568
    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 575
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 576
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 577
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 575
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "No READ_EXTERNAL_STORAGE permission, ignoring ringtones on ext storage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-object v4

    .line 582
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 584
    .local v6, "status":Ljava/lang/String;
    const-string/jumbo v0, "mounted"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 584
    if-eqz v0, :cond_2

    .line 587
    :cond_1
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 588
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 589
    const-string/jumbo v5, "title_key"

    move-object v0, p0

    .line 586
    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 584
    :cond_2
    return-object v4
.end method

.method private static getMediastoreForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 949
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 950
    const-string/jumbo v0, "is_ringtone"

    return-object v0

    .line 951
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_1

    .line 952
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_2

    .line 954
    :cond_1
    const-string/jumbo v0, "is_notification"

    return-object v0

    .line 953
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_1

    .line 955
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_3

    .line 956
    const-string/jumbo v0, "is_alarm"

    return-object v0

    .line 957
    :cond_3
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_4

    .line 958
    const-string/jumbo v0, "is_ringtone"

    return-object v0

    .line 960
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getNewRinetoneFromPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    const/4 v9, 0x0

    .line 919
    const/4 v4, 0x0

    .line 920
    .local v4, "uriString":Ljava/lang/String;
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getRingtonePath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "ringtonePath":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 923
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 924
    .local v1, "newUri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 925
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 926
    .local v4, "uriString":Ljava/lang/String;
    const-string/jumbo v6, "RingtoneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getNewRinetoneFromPath newUri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v7

    invoke-static {v6, p1, v4, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 930
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 931
    .local v5, "values":Landroid/content/ContentValues;
    invoke-static {p2}, Landroid/media/RingtoneManager;->getMediastoreForType(I)Ljava/lang/String;

    move-result-object v0

    .line 932
    .local v0, "mediaStore":Ljava/lang/String;
    const-string/jumbo v6, "1"

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v1, v5, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 942
    .end local v0    # "mediaStore":Ljava/lang/String;
    .end local v1    # "newUri":Landroid/net/Uri;
    .end local v4    # "uriString":Ljava/lang/String;
    .end local v5    # "values":Landroid/content/ContentValues;
    :goto_0
    return-object v4

    .line 935
    .restart local v1    # "newUri":Landroid/net/Uri;
    .local v4, "uriString":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 936
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "uriString":Ljava/lang/String;
    goto :goto_0

    .local v4, "uriString":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 939
    .end local v1    # "newUri":Landroid/net/Uri;
    :cond_2
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    .line 940
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "uriString":Ljava/lang/String;
    goto :goto_0

    .local v4, "uriString":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1165
    const/4 v1, 0x0

    .line 1166
    .local v1, "path":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    .line 1167
    .local v2, "storage":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1169
    .local v0, "c":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "content://media/external"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1170
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1171
    .local v1, "path":Ljava/lang/String;
    invoke-static {}, Landroid/media/RingtoneManager;->getStoragePath()[Ljava/lang/String;

    move-result-object v2

    .line 1172
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1173
    const-string/jumbo v5, ", external storage = "

    .line 1172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1173
    aget-object v5, v2, v6

    .line 1172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1176
    aget-object v3, v2, v7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v2, v7

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    aget-object v3, v2, v7

    const-string/jumbo v4, "Phone"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 1187
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 1178
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    aget-object v3, v2, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    aget-object v3, v2, v6

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1179
    aget-object v3, v2, v6

    const-string/jumbo v4, "TF"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1181
    :cond_2
    const/4 v1, 0x0

    .local v1, "path":Ljava/lang/String;
    goto :goto_0

    .line 1184
    .local v1, "path":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .local v1, "path":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getPathSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1087
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1088
    const-string/jumbo v0, "ring_path"

    return-object v0

    .line 1089
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1090
    const-string/jumbo v0, "notification_path"

    return-object v0

    .line 1091
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1092
    const-string/jumbo v0, "alarm_path"

    return-object v0

    .line 1093
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 1094
    const-string/jumbo v0, "ring_path_2"

    return-object v0

    .line 1095
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 1096
    const-string/jumbo v0, "smsring_path"

    return-object v0

    .line 1097
    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    .line 1098
    const-string/jumbo v0, "smsring_path_2"

    return-object v0

    .line 1100
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 678
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    const/4 v6, 0x0

    .line 694
    const/4 v2, -0x1

    .line 695
    .local v2, "ringtoneType":I
    if-eqz p1, :cond_0

    .line 696
    :try_start_0
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v2

    .line 699
    :cond_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 700
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p1

    .line 719
    :cond_1
    :goto_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 720
    .local v1, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_2

    .line 721
    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 723
    :cond_2
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 724
    return-object v1

    .line 701
    .end local v1    # "r":Landroid/media/Ringtone;
    :cond_3
    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 702
    packed-switch p2, :pswitch_data_0

    .line 710
    const/4 v2, 0x1

    .line 713
    :goto_1
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ringtone resource doesn\'t exist, infer type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 704
    :pswitch_0
    const/4 v2, 0x4

    .line 705
    goto :goto_1

    .line 707
    :pswitch_1
    const/4 v2, 0x2

    .line 708
    goto :goto_1

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "RingtoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to open ringtone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-object v6

    .line 702
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getRingtonePath(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 968
    invoke-static {p1}, Landroid/media/RingtoneManager;->getPathSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "pathName":Ljava/lang/String;
    if-nez v0, :cond_0

    return-object v2

    .line 970
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 971
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 970
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "pathString":Ljava/lang/String;
    return-object v1
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1192
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 1193
    const-string/jumbo v0, "ringtone"

    return-object v0

    .line 1194
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 1195
    const-string/jumbo v0, "notification_sound"

    return-object v0

    .line 1196
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 1197
    const-string/jumbo v0, "alarm_alert"

    return-object v0

    .line 1199
    :cond_2
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_3

    .line 1200
    const-string/jumbo v0, "ringtone_2"

    return-object v0

    .line 1201
    :cond_3
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    .line 1202
    const-string/jumbo v0, "smsringtone"

    return-object v0

    .line 1203
    :cond_4
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_5

    .line 1204
    const-string/jumbo v0, "smsringtone_2"

    return-object v0

    .line 1207
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getStoragePath()[Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v9, 0x0

    .line 1131
    new-array v4, v14, [Ljava/lang/String;

    .line 1134
    .local v4, "path":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v10, "mount"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v3

    .line 1135
    .local v3, "mMountService":Landroid/os/storage/IMountService;
    if-eqz v3, :cond_4

    .line 1136
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 1137
    .local v7, "userId":I
    const/4 v10, 0x0

    invoke-interface {v3, v10}, Landroid/os/storage/IMountService;->getVolumes(I)[Landroid/os/storage/VolumeInfo;

    move-result-object v10

    array-length v11, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v8, v10, v9

    .line 1138
    .local v8, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, "diskID":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v6

    .line 1140
    .local v6, "type":I
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    .line 1141
    .local v5, "state":I
    if-ne v6, v14, :cond_3

    if-ne v5, v14, :cond_3

    .line 1142
    invoke-virtual {v8}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v2

    .line 1143
    .local v2, "internalPath":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "/mnt/expand"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1137
    .end local v2    # "internalPath":Ljava/io/File;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1144
    .restart local v2    # "internalPath":Ljava/io/File;
    :cond_1
    invoke-virtual {v8, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v4, v13
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1155
    .end local v0    # "diskID":Ljava/lang/String;
    .end local v2    # "internalPath":Ljava/io/File;
    .end local v3    # "mMountService":Landroid/os/storage/IMountService;
    .end local v5    # "state":I
    .end local v6    # "type":I
    .end local v7    # "userId":I
    .end local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :catch_0
    move-exception v1

    .line 1156
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "RingtoneManager"

    const-string/jumbo v10, "get storage path error!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_2
    return-object v4

    .line 1146
    .restart local v0    # "diskID":Ljava/lang/String;
    .restart local v3    # "mMountService":Landroid/os/storage/IMountService;
    .restart local v5    # "state":I
    .restart local v6    # "type":I
    .restart local v7    # "userId":I
    .restart local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_3
    if-nez v6, :cond_0

    if-ne v5, v14, :cond_0

    .line 1147
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v12, v8, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    iget v12, v12, Landroid/os/storage/DiskInfo;->flags:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_0

    .line 1148
    invoke-virtual {v8, v7}, Landroid/os/storage/VolumeInfo;->getPathForUser(I)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v4, v13

    goto :goto_1

    .line 1153
    .end local v0    # "diskID":Ljava/lang/String;
    .end local v5    # "state":I
    .end local v6    # "type":I
    .end local v7    # "userId":I
    .end local v8    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_4
    const-string/jumbo v9, "RingtoneManager"

    const-string/jumbo v10, "get MountService error!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 484
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 485
    const/4 v1, 0x0

    .line 484
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 979
    const/4 v6, 0x0

    .line 980
    .local v6, "c":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 981
    .local v10, "newUri":Landroid/net/Uri;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 982
    .local v1, "AudioUri":Landroid/net/Uri;
    const-string/jumbo v3, "_data=?"

    .line 983
    .local v3, "Condition":Ljava/lang/String;
    invoke-static {}, Landroid/media/RingtoneManager;->getStoragePath()[Ljava/lang/String;

    move-result-object v11

    .line 985
    .local v11, "storage":[Ljava/lang/String;
    const-string/jumbo v0, "TF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v11, v12

    if-eqz v0, :cond_2

    .line 986
    const-string/jumbo v0, "TF"

    aget-object v2, v11, v12

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 994
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 995
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_0

    .line 996
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 997
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 998
    .local v8, "id":J
    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 1003
    .end local v8    # "id":J
    .end local v10    # "newUri":Landroid/net/Uri;
    :cond_0
    if-eqz v6, :cond_1

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1008
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-object v10

    .line 987
    .local v6, "c":Landroid/database/Cursor;
    .restart local v10    # "newUri":Landroid/net/Uri;
    :cond_2
    const-string/jumbo v0, "Phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v11, v4

    if-eqz v0, :cond_3

    .line 988
    const-string/jumbo v0, "Phone"

    aget-object v2, v11, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 990
    :cond_3
    return-object v2

    .line 1000
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1001
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v2, "find ringtone path ERROR"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    if-eqz v6, :cond_1

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1002
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1003
    if-eqz v6, :cond_4

    .line 1004
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1002
    :cond_4
    throw v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 537
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 541
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 542
    const-string/jumbo v3, "ringtone_default"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 541
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 545
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 546
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 549
    :cond_0
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 553
    if-eqz p1, :cond_1

    .line 554
    const/4 v0, 0x0

    .line 556
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 557
    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 559
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 561
    return-object v0

    .line 563
    :cond_1
    return-object v1
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 1231
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    if-nez p1, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_0
    const/4 v2, 0x0

    .local v2, "exist":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    .local v3, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v3, :cond_2

    const/4 v2, 0x0

    .end local v2    # "exist":Z
    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_1
    :goto_0
    return v2

    .restart local v2    # "exist":Z
    .restart local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_2
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v3    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "file":Ljava/io/File;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .local v2, "exist":Z
    goto :goto_0

    .end local v4    # "file":Ljava/io/File;
    .local v2, "exist":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1057
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1059
    .local v3, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to open directly; attempting failover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 1065
    .local v2, "player":Landroid/media/IRingtonePlayer;
    :try_start_1
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-interface {v2, p1}, Landroid/media/IRingtonePlayer;->openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 1066
    :catch_1
    move-exception v1

    .line 1067
    .local v1, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static reInitRingtoneSetting(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/media/RingtoneManager;->setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultSettingForType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/media/RingtoneManager;->setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method private static saveRingtonePath(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1077
    invoke-static {p1}, Landroid/media/RingtoneManager;->getPathSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    .local v0, "pathSetting":Ljava/lang/String;
    if-nez v0, :cond_0

    return-void

    .line 1079
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1080
    if-eqz p2, :cond_1

    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getPathFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1079
    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1076
    return-void
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 1023
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1025
    .local v4, "resolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v5

    .line 1026
    .local v5, "setting":Ljava/lang/String;
    if-nez v5, :cond_0

    return-void

    .line 1028
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 1027
    invoke-static {v4, v5, v6, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1030
    const-string/jumbo v6, "RingtoneManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Set actual default ringtone uri= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->saveRingtonePath(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1036
    if-eqz p2, :cond_6

    .line 1037
    invoke-static {p1}, Landroid/media/RingtoneManager;->getCacheForType(I)Landroid/net/Uri;

    move-result-object v0

    .line 1039
    .local v0, "cacheUri":Landroid/net/Uri;
    if-nez v0, :cond_2

    return-void

    .end local v0    # "cacheUri":Landroid/net/Uri;
    :cond_1
    move-object v6, v7

    .line 1028
    goto :goto_0

    .line 1041
    .restart local v0    # "cacheUri":Landroid/net/Uri;
    :cond_2
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 1042
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1043
    .local v3, "out":Ljava/io/OutputStream;
    invoke-static {v2, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1046
    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v6, v7

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    :try_start_3
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1044
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 1045
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v6, "RingtoneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to cache ringtone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "cacheUri":Landroid/net/Uri;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6

    invoke-static/range {p0 .. p2}, Landroid/media/RingtoneManager;->setFlymeActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    return-void

    .restart local v0    # "cacheUri":Landroid/net/Uri;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v6

    if-eqz v7, :cond_5

    if-eq v7, v6, :cond_4

    :try_start_4
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v6, v7

    goto :goto_2

    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v6

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_3
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_7
    move-object v8, v7

    :cond_8
    :goto_4
    if-eqz v2, :cond_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_9
    move-object v7, v8

    :cond_a
    :goto_5
    if-eqz v7, :cond_b

    :try_start_8
    throw v7

    :catch_4
    move-exception v8

    if-eqz v7, :cond_8

    if-eq v7, v8, :cond_7

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v7

    goto :goto_4

    :catch_5
    move-exception v7

    if-eqz v8, :cond_a

    if-eq v8, v7, :cond_9

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v8

    goto :goto_5

    :cond_b
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catchall_1
    move-exception v6

    goto :goto_3
.end method

.method private setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 594
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 595
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 598
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 599
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 601
    :cond_0
    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    .line 606
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_5

    .line 609
    :cond_2
    :goto_0
    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 613
    const-string/jumbo v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_4
    return-void

    .line 607
    :cond_5
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method private static setSettingIfNotSet(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settingName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 851
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 853
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 854
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 853
    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "existingSettingValue":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 857
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {v1, p1, p2, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 850
    :cond_1
    return-void
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 440
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v2

    .line 444
    :cond_0
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 445
    .local v0, "internalCursor":Landroid/database/Cursor;
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 447
    .local v1, "mediaCursor":Landroid/database/Cursor;
    new-instance v2, Lcom/android/internal/database/SortCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 448
    const-string/jumbo v4, "title_key"

    .line 447
    invoke-direct {v2, v3, v4}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v2
.end method

.method public getIncludeDrm()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 404
    const/4 v0, 0x0

    return v0
.end method

.method public getNewCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 1449
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v0

    .line 1450
    .local v0, "internalCursor":Landroid/database/Cursor;
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 1452
    .local v1, "mediaCursor":Landroid/database/Cursor;
    new-instance v2, Lcom/android/internal/database/SortCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 1453
    const-string/jumbo v4, "title_key"

    .line 1452
    invoke-direct {v2, v3, v4}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v2
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 463
    :cond_0
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 464
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .locals 9
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v8, -0x1

    .line 496
    if-nez p1, :cond_0

    return v8

    .line 498
    :cond_0
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 499
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 501
    .local v2, "cursorCount":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 502
    return v8

    .line 506
    :cond_1
    const/4 v0, 0x0

    .line 507
    .local v0, "currentUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 508
    .local v4, "previousUriString":Ljava/lang/String;
    const/4 v3, 0x0

    .end local v0    # "currentUri":Landroid/net/Uri;
    .end local v4    # "previousUriString":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 509
    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 510
    .local v5, "uriString":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 515
    :goto_1
    const/4 v6, 0x0

    .line 514
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 516
    return v3

    .line 511
    :cond_2
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "currentUri":Landroid/net/Uri;
    goto :goto_1

    .line 519
    .end local v0    # "currentUri":Landroid/net/Uri;
    :cond_3
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->move(I)Z

    .line 521
    move-object v4, v5

    .line 508
    .local v4, "previousUriString":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .end local v4    # "previousUriString":Ljava/lang/String;
    .end local v5    # "uriString":Ljava/lang/String;
    :cond_4
    return v8
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 476
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 477
    :cond_0
    return-object v1
.end method

.method public getStopPreviousRingtone()Z
    .locals 1

    .prologue
    .line 382
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .locals 1

    .prologue
    .line 347
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 360
    const/4 v0, 0x2

    return v0

    .line 350
    :sswitch_0
    const/4 v0, 0x4

    return v0

    .line 357
    :sswitch_1
    const/4 v0, 0x5

    return v0

    .line 347
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIncludeDrm(Z)V
    .locals 2
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 416
    if-eqz p1, :cond_0

    .line 417
    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .locals 0
    .param p1, "stopPreviousRingtone"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 374
    return-void
.end method

.method public setType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 331
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 333
    const-string/jumbo v1, "Setting filter columns should be done before querying for ringtones."

    .line 332
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 337
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 330
    return-void
.end method

.method public stopPreviousRingtone()V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 388
    :cond_0
    return-void
.end method

.method private static setFlymeActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x800

    invoke-static {p0, v0, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    const/16 v0, 0x1000

    invoke-static {p0, v0, p2}, Landroid/media/MzRingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method
