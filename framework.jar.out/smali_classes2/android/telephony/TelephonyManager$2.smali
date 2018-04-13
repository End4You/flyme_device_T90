.class Landroid/telephony/TelephonyManager$2;
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

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Landroid/telephony/TelephonyManager;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/telephony/TelephonyManager;
    .param p2, "val$subId"    # I

    .prologue
    .line 4882
    iput-object p1, p0, Landroid/telephony/TelephonyManager$2;->this$0:Landroid/telephony/TelephonyManager;

    iput p2, p0, Landroid/telephony/TelephonyManager$2;->val$subId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4885
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "dismiss alert dialog, set data on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4888
    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyManager$2;->this$0:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->-wrap0(Landroid/telephony/TelephonyManager;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iget v2, p0, Landroid/telephony/TelephonyManager$2;->val$subId:I

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4884
    :goto_0
    return-void

    .line 4889
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
