.class public final Landroid/safe/SafeConst;
.super Ljava/lang/Object;
.source "SafeConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/safe/SafeConst$1;,
        Landroid/safe/SafeConst$2;
    }
.end annotation


# static fields
.field public static final EXTRA_OP:Ljava/lang/String; = "extra_operate"

.field public static final MS_EXTRA_CALL_NUMBER:Ljava/lang/String; = "extra_call_number"

.field public static final MS_EXTRA_SMS_BODY:Ljava/lang/String; = "extra_sms_body"

.field public static final MS_EXTRA_SMS_SEND_TO:Ljava/lang/String; = "extra_sms_sendto"

.field public static final MS_EXTRA_TYPE:Ljava/lang/String; = "ms_extra_type"

.field public static final MS_TYPE_CALL:I = 0x3e8

.field public static final MS_TYPE_SMS:I = 0x3e9

.field public static final OP_DELETE:I = 0x3

.field public static final OP_INSERT:I = 0x1

.field public static final OP_UPDATE:I = 0x2

.field public static final PERM_ACCESS_COARSE_LOCATION:I = 0xd

.field public static final PERM_ACCESS_FINE_LOCATION:I = 0xe

.field public static final PERM_ENABLE_BLUETOOTH:I = 0x11

.field public static final PERM_ENABLE_MOBILE_DATA:I = 0x10

.field public static final PERM_ENABLE_NFC:I = 0x12

.field public static final PERM_ENABLE_WIFI:I = 0xf

.field public static final PERM_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERM_MAKE_PHONE_CALL:I = 0x0

.field public static final PERM_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERM_MAX_INDEX:I = 0x14

.field public static final PERM_OPEN_CAMERA:I = 0x13

.field public static final PERM_READ_CALL_LOG:I = 0xb

.field public static final PERM_READ_CONTACTS:I = 0x9

.field public static final PERM_READ_MMS:I = 0x6

.field public static final PERM_READ_SMS:I = 0x3

.field public static final PERM_RECORD_AUDIO:I = 0x1

.field public static final PERM_RECORD_AUDIO_CALL:I = 0x2

.field public static final PERM_RECORD_VIDEO:I = 0x16

.field public static final PERM_SEND_EMAIL:I = 0x14

.field public static final PERM_SEND_MMS:I = 0x8

.field public static final PERM_SEND_SMS:I = 0x5

.field public static final PERM_TAKE_PICTURE:I = 0x15

.field public static final PERM_WRITE_CALL_LOG:I = 0xc

.field public static final PERM_WRITE_CONTACTS:I = 0xa

.field public static final PERM_WRITE_MMS:I = 0x7

.field public static final PERM_WRITE_SMS:I = 0x4

.field public static final SERVICE_NAME:Ljava/lang/String; = "mobile_safe"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Landroid/safe/SafeConst$1;

    invoke-direct {v0}, Landroid/safe/SafeConst$1;-><init>()V

    sput-object v0, Landroid/safe/SafeConst;->PERM_MAP:Ljava/util/HashMap;

    .line 105
    new-instance v0, Landroid/safe/SafeConst$2;

    invoke-direct {v0}, Landroid/safe/SafeConst$2;-><init>()V

    sput-object v0, Landroid/safe/SafeConst;->PERM_ID_MAP:Ljava/util/HashMap;

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
