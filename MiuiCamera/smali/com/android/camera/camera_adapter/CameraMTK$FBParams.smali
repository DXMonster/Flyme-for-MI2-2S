.class public Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
.super Ljava/lang/Object;
.source "CameraMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/camera_adapter/CameraMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FBParams"
.end annotation


# instance fields
.field public enlargeEye:I

.field public skinColor:I

.field public slimFace:I

.field public smoothLevel:I

.field final synthetic this$0:Lcom/android/camera/camera_adapter/CameraMTK;


# direct methods
.method public constructor <init>(Lcom/android/camera/camera_adapter/CameraMTK;)V
    .locals 0

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->this$0:Lcom/android/camera/camera_adapter/CameraMTK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/android/camera/camera_adapter/CameraMTK$FBParams;)V
    .locals 1
    .param p1, "other"    # Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .prologue
    .line 419
    if-nez p1, :cond_0

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_0
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 423
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    .line 424
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    .line 425
    iget v0, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iput v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    if-ne p0, p1, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 431
    :cond_1
    instance-of v3, p1, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 433
    check-cast v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;

    .line 435
    .local v0, "fbParams":Lcom/android/camera/camera_adapter/CameraMTK$FBParams;
    iget v3, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    iget v4, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    .line 436
    :cond_3
    iget v3, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    iget v4, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 437
    :cond_4
    iget v3, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    iget v4, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 438
    :cond_5
    iget v3, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    iget v4, v0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 445
    iget v0, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->skinColor:I

    .line 446
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->smoothLevel:I

    add-int v0, v1, v2

    .line 447
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->slimFace:I

    add-int v0, v1, v2

    .line 448
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/camera/camera_adapter/CameraMTK$FBParams;->enlargeEye:I

    add-int v0, v1, v2

    .line 449
    return v0
.end method
