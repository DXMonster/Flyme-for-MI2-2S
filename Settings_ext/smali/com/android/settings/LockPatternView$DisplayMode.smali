.class public final enum Lcom/android/settings_ext/LockPatternView$DisplayMode;
.super Ljava/lang/Enum;
.source "LockPatternView.java"


# static fields
.field public static final enum nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

.field public static final enum nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

.field public static final enum nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

.field private static final synthetic nU:[Lcom/android/settings_ext/LockPatternView$DisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;

    const-string v1, "Correct"

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ext/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 126
    new-instance v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;

    const-string v1, "Animate"

    invoke-direct {v0, v1, v3}, Lcom/android/settings_ext/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 131
    new-instance v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;

    const-string v1, "Wrong"

    invoke-direct {v0, v1, v4}, Lcom/android/settings_ext/LockPatternView$DisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    .line 116
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings_ext/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nR:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nS:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nT:Lcom/android/settings_ext/LockPatternView$DisplayMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nU:[Lcom/android/settings_ext/LockPatternView$DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ext/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ext/LockPatternView$DisplayMode;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/settings_ext/LockPatternView$DisplayMode;->nU:[Lcom/android/settings_ext/LockPatternView$DisplayMode;

    invoke-virtual {v0}, [Lcom/android/settings_ext/LockPatternView$DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ext/LockPatternView$DisplayMode;

    return-object v0
.end method
