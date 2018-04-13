.class Lcom/android/server/policy/MutiPointFuncView$1;
.super Ljava/lang/Thread;
.source "MutiPointFuncView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MutiPointFuncView;->takeScreenshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MutiPointFuncView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MutiPointFuncView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MutiPointFuncView;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/policy/MutiPointFuncView$1;->this$0:Lcom/android/server/policy/MutiPointFuncView;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 183
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 184
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 186
    .local v4, "now":J
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    .line 187
    const/16 v9, 0x19

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 188
    const/16 v14, 0x8

    const/16 v15, 0x101

    move-wide v6, v4

    .line 186
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 189
    .local v3, "vol_downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x1

    invoke-static {v3, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v21

    .line 191
    .local v21, "vol_upEvent":Landroid/view/KeyEvent;
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    .line 192
    const/16 v13, 0x1a

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    .line 193
    const/16 v18, 0x8

    const/16 v19, 0x101

    move-wide v8, v4

    move-wide v10, v4

    .line 191
    invoke-direct/range {v7 .. v19}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 194
    .local v7, "power_downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x1

    invoke-static {v7, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v20

    .line 196
    .local v20, "power_upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v7, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 197
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 198
    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 199
    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 182
    return-void
.end method
