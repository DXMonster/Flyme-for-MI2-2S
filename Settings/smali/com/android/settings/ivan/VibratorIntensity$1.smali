.class final Lcom/android/settings/ivan/VibratorIntensity$1;
.super Ljava/lang/Object;
.source "VibratorIntensity.java"

# interfaces
.implements Lcom/android/settings/ivan/HWValueSliderPreference$HardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ivan/VibratorIntensity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentValue()I
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/android/settings/ivan/VibratorHW;->getCurIntensity()I

    move-result v0

    return v0
.end method

.method public getDefaultValue()I
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/android/settings/ivan/VibratorHW;->getDefaultIntensity()I

    move-result v0

    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/settings/ivan/VibratorHW;->getMaxIntensity()I

    move-result v0

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/android/settings/ivan/VibratorHW;->getMinIntensity()I

    move-result v0

    return v0
.end method

.method public getPreferenceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "vibration_intensity"

    return-object v0
.end method

.method public getWarningThreshold()I
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/settings/ivan/VibratorHW;->getWarningThreshold()I

    move-result v0

    return v0
.end method

.method public setValue(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 51
    invoke-static {p1}, Lcom/android/settings/ivan/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method
