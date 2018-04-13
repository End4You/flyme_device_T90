.class public final enum Lcom/android/server/policy/ProximitySensorManager$State;
.super Ljava/lang/Enum;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/policy/ProximitySensorManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/policy/ProximitySensorManager$State;

.field public static final enum FAR:Lcom/android/server/policy/ProximitySensorManager$State;

.field public static final enum NEAR:Lcom/android/server/policy/ProximitySensorManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/android/server/policy/ProximitySensorManager$State;

    const-string/jumbo v1, "NEAR"

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/ProximitySensorManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/ProximitySensorManager$State;->NEAR:Lcom/android/server/policy/ProximitySensorManager$State;

    new-instance v0, Lcom/android/server/policy/ProximitySensorManager$State;

    const-string/jumbo v1, "FAR"

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/ProximitySensorManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/policy/ProximitySensorManager$State;

    sget-object v1, Lcom/android/server/policy/ProximitySensorManager$State;->NEAR:Lcom/android/server/policy/ProximitySensorManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/policy/ProximitySensorManager$State;->FAR:Lcom/android/server/policy/ProximitySensorManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/policy/ProximitySensorManager$State;->$VALUES:[Lcom/android/server/policy/ProximitySensorManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/policy/ProximitySensorManager$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/android/server/policy/ProximitySensorManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/ProximitySensorManager$State;

    return-object v0
.end method

.method public static values()[Lcom/android/server/policy/ProximitySensorManager$State;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/policy/ProximitySensorManager$State;->$VALUES:[Lcom/android/server/policy/ProximitySensorManager$State;

    return-object v0
.end method
