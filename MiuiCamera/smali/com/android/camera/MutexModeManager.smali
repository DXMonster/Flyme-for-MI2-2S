.class public Lcom/android/camera/MutexModeManager;
.super Ljava/lang/Object;
.source "MutexModeManager.java"


# instance fields
.field private mCurrentMutexMode:I

.field private mLastMutexMode:I

.field private mRunnableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;>;"
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 25
    iput v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 29
    iput-object p1, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method private enter(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 148
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 150
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 151
    const-string v2, "enter"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 152
    .local v0, "enter":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 155
    .end local v0    # "enter":Ljava/lang/Runnable;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method private exit(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 135
    iget v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    iput v2, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    .line 136
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    .line 137
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 138
    iget-object v2, p0, Lcom/android/camera/MutexModeManager;->mRunnableMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 139
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    if-eqz v1, :cond_0

    .line 140
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 141
    .local v0, "exit":Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 144
    .end local v0    # "exit":Ljava/lang/Runnable;
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public static getMutexModeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 118
    packed-switch p0, :pswitch_data_0

    .line 130
    :pswitch_0
    const-string v0, "none"

    :goto_0
    return-object v0

    .line 120
    :pswitch_1
    const-string v0, "hdr"

    goto :goto_0

    .line 122
    :pswitch_2
    const-string v0, "aohdr"

    goto :goto_0

    .line 124
    :pswitch_3
    const-string v0, "hand-night"

    goto :goto_0

    .line 126
    :pswitch_4
    const-string v0, "raw"

    goto :goto_0

    .line 128
    :pswitch_5
    const-string v0, "burst-shoot"

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private switchMutexMode(II)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 158
    if-eq p1, p2, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/camera/MutexModeManager;->exit(I)V

    .line 160
    invoke-direct {p0, p2}, Lcom/android/camera/MutexModeManager;->enter(I)V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public getLastMutexMode()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mLastMutexMode:I

    return v0
.end method

.method public getMutexMode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    return v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    packed-switch v0, :pswitch_data_0

    .line 113
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 104
    :pswitch_0
    const-string v0, "_AO_HDR"

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "_HDR"

    goto :goto_0

    .line 109
    :pswitch_2
    const-string v0, "_HHT"

    goto :goto_0

    .line 111
    :pswitch_3
    const-string v0, "_RAW"

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public isAoHdr()Z
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBurstShoot()Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHandNight()Z
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHdr()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 77
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMorphoHdr()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 69
    iget v1, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedComposed()Z
    .locals 2

    .prologue
    .line 94
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormal()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRAW()Z
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSceneHdr()Z
    .locals 2

    .prologue
    .line 82
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedFlashOn()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportedTorch()Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTorchCapture()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUbiFocus()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetMutexMode()V
    .locals 2

    .prologue
    .line 39
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 40
    return-void
.end method

.method public setMutexMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 34
    iget v0, p0, Lcom/android/camera/MutexModeManager;->mCurrentMutexMode:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/MutexModeManager;->switchMutexMode(II)V

    .line 35
    return-void
.end method
