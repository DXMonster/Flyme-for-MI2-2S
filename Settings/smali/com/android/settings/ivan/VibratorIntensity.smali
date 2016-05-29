.class public Lcom/android/settings_ext/ivan/VibratorIntensity;
.super Lcom/android/settings_ext/ivan/HWValueSliderPreference;
.source "VibratorIntensity.java"


# static fields
.field private static final HW_INTERFACE:Lcom/android/settings_ext/ivan/HWValueSliderPreference$HardwareInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/settings_ext/ivan/VibratorIntensity$1;

    invoke-direct {v0}, Lcom/android/settings_ext/ivan/VibratorIntensity$1;-><init>()V

    sput-object v0, Lcom/android/settings_ext/ivan/VibratorIntensity;->HW_INTERFACE:Lcom/android/settings_ext/ivan/HWValueSliderPreference$HardwareInterface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    invoke-static {}, Lcom/android/settings_ext/ivan/VibratorIntensity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ext/ivan/VibratorIntensity;->HW_INTERFACE:Lcom/android/settings_ext/ivan/HWValueSliderPreference$HardwareInterface;

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ext/ivan/HWValueSliderPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/settings_ext/ivan/HWValueSliderPreference$HardwareInterface;)V

    .line 62
    const v0, 0x7f0400d1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/ivan/VibratorIntensity;->setDialogLayoutResource(I)V

    .line 63
    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupported()Z
    .locals 2

    .prologue
    .line 73
    :try_start_0
    invoke-static {}, Lcom/android/settings_ext/ivan/VibratorHW;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 76
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings_ext/ivan/VibratorIntensity;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 68
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 69
    return-void
.end method
