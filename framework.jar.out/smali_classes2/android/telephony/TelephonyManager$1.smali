.class Landroid/telephony/TelephonyManager$1;
.super Ljava/lang/Object;
.source "TelephonyManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyManager;->showDataEnableAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/TelephonyManager;


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;

    .prologue
    .line 4875
    iput-object p1, p0, Landroid/telephony/TelephonyManager$1;->this$0:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4878
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "dismiss alert dialog, set data off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4879
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4877
    return-void
.end method
