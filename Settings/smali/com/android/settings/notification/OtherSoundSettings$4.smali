.class final Lcom/android/settings_ext/notification/OtherSoundSettings$4;
.super Lcom/android/settings_ext/notification/SettingPref;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ext/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [I

    .prologue
    .line 102
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ext/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    # invokes: Lcom/android/settings_ext/notification/OtherSoundSettings;->hasHaptic(Landroid/content/Context;)Z
    invoke-static {p1}, Lcom/android/settings_ext/notification/OtherSoundSettings;->access$100(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method