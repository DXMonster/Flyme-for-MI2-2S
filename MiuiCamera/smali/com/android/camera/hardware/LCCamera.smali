.class public Lcom/android/camera/hardware/LCCamera;
.super Lcom/android/camera/hardware/CameraHardware;
.source "LCCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/LCCamera$LCParameters;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "cameraId"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    .line 9
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/LCCamera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 12
    new-instance v0, Lcom/android/camera/hardware/LCCamera;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/LCCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/hardware/LCCamera;->getParameters()Lcom/android/camera/hardware/LCCamera$LCParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0}, Lcom/android/camera/hardware/LCCamera;->getParameters()Lcom/android/camera/hardware/LCCamera$LCParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/LCCamera$LCParameters;
    .locals 4

    .prologue
    .line 29
    new-instance v0, Lcom/android/camera/hardware/LCCamera$LCParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/LCCamera$LCParameters;-><init>(Lcom/android/camera/hardware/LCCamera;)V

    .line 30
    .local v0, "p":Lcom/android/camera/hardware/LCCamera$LCParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/LCCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 32
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->unflatten(Ljava/lang/String;)V

    .line 35
    return-object v0
.end method
