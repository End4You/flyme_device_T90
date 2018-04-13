.class Lcom/android/server/policy/GlobalActionsView$1;
.super Ljava/lang/Object;
.source "GlobalActionsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActionsView;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActionsView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActionsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActionsView;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/server/policy/GlobalActionsView$1;->this$0:Lcom/android/server/policy/GlobalActionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView$1;->this$0:Lcom/android/server/policy/GlobalActionsView;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActionsView;->-get0(Lcom/android/server/policy/GlobalActionsView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/server/policy/GlobalActionsView$1;->this$0:Lcom/android/server/policy/GlobalActionsView;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActionsView;->-get0(Lcom/android/server/policy/GlobalActionsView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, -0x1207

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 50
    :cond_0
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->removeGlobalView()V

    .line 46
    return-void
.end method
