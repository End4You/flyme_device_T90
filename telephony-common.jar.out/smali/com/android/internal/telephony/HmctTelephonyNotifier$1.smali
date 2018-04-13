.class Lcom/android/internal/telephony/HmctTelephonyNotifier$1;
.super Landroid/database/ContentObserver;
.source "HmctTelephonyNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HmctTelephonyNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/HmctTelephonyNotifier;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/HmctTelephonyNotifier;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/HmctTelephonyNotifier;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier$1;->this$0:Lcom/android/internal/telephony/HmctTelephonyNotifier;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/HmctTelephonyNotifier$1;->this$0:Lcom/android/internal/telephony/HmctTelephonyNotifier;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/HmctTelephonyNotifier;->-set0(Lcom/android/internal/telephony/HmctTelephonyNotifier;Z)Z

    .line 116
    return-void
.end method
