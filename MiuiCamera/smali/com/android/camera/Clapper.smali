.class public Lcom/android/camera/Clapper;
.super Ljava/lang/Object;
.source "Clapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/Clapper$ClapperListener;
    }
.end annotation


# static fields
.field public static final AMPLITUDE_ABSOLUTE_THRESHOLD:I

.field public static final AMPLITUDE_INIT:I

.field private static final DEFAULT_AMPLITUDE_DIFF:I

.field public static final SCALE_FACTOR:I


# instance fields
.field private mContinueRecording:Z

.field private mListener:Lcom/android/camera/Clapper$ClapperListener;

.field private mRecorder:Landroid/media/MediaRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/android/camera/Clapper;->getScaleFactor()I

    move-result v0

    sput v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    .line 15
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    .line 21
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x7d0

    sput v0, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    .line 22
    sget v0, Lcom/android/camera/Clapper;->SCALE_FACTOR:I

    mul-int/lit16 v0, v0, 0x1388

    sput v0, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Clapper$ClapperListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/Clapper$ClapperListener;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/Clapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/Clapper;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/camera/Clapper;->threadRecordClap()V

    return-void
.end method

.method public static getScaleFactor()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 39
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI2A:Z

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v1, :cond_3

    .line 42
    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    .line 43
    :cond_3
    sget-boolean v1, Lcom/android/camera/Device;->IS_PAD1:Z

    if-nez v1, :cond_0

    .line 46
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private startRecorder()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 55
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 59
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 60
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "camera_claaper_recorder.3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "outputFilePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 64
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V

    .line 65
    iget-object v3, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1    # "outputFilePath":Ljava/lang/String;
    :goto_0
    return v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Clapper"

    const-string v3, "Failed to start media recorder. Maybe it is used by other app."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private threadRecordClap()V
    .locals 18

    .prologue
    .line 129
    sget v3, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    .line 130
    .local v3, "averageAmplitude":I
    sget-boolean v9, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v9, :cond_0

    sget-boolean v9, Lcom/android/camera/Device;->IS_MI5:Z

    if-eqz v9, :cond_3

    :cond_0
    const/4 v7, 0x3

    .line 138
    .local v7, "studyTimes":I
    :cond_1
    :goto_0
    const-wide/16 v10, 0xc8

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v9}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v5

    .line 145
    .local v5, "finishAmplitude":I
    if-le v5, v3, :cond_4

    .line 146
    int-to-double v10, v3

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v10, v12

    int-to-double v12, v5

    const-wide v14, 0x3fb9999999999998L    # 0.09999999999999998

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v3, v10

    .line 152
    :goto_2
    if-lez v7, :cond_5

    .line 153
    add-int/lit8 v7, v7, -0x1

    .line 181
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    if-nez v9, :cond_1

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/Clapper;->stopRecorder()V

    .line 189
    return-void

    .line 130
    .end local v5    # "finishAmplitude":I
    .end local v7    # "studyTimes":I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 139
    .restart local v7    # "studyTimes":I
    :catch_0
    move-exception v4

    .line 140
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v9, "Clapper"

    const-string v10, "Thread.sleep() interrupted"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .restart local v5    # "finishAmplitude":I
    :cond_4
    int-to-double v10, v3

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v10, v12

    int-to-double v12, v5

    const-wide v14, 0x3fc9999999999998L    # 0.19999999999999996

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    double-to-int v3, v10

    goto :goto_2

    .line 157
    :cond_5
    sub-int v2, v5, v3

    .line 158
    .local v2, "ampDifference":I
    sget v9, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    if-le v3, v9, :cond_7

    sget v9, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    int-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    sget v9, Lcom/android/camera/Clapper;->AMPLITUDE_INIT:I

    int-to-double v0, v9

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    add-double/2addr v12, v14

    mul-double/2addr v10, v12

    double-to-int v8, v10

    .line 167
    .local v8, "threshold":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    if-eqz v9, :cond_2

    .line 169
    sget v9, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    if-gt v5, v9, :cond_6

    if-lt v2, v8, :cond_8

    .line 172
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-interface {v9, v10}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    .line 173
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v9}, Lcom/android/camera/Clapper$ClapperListener;->releaseShutter()V

    goto :goto_3

    .line 158
    .end local v8    # "threshold":I
    :cond_7
    sget v8, Lcom/android/camera/Clapper;->DEFAULT_AMPLITUDE_DIFF:I

    goto :goto_4

    .line 175
    .restart local v8    # "threshold":I
    :cond_8
    int-to-float v9, v5

    sget v10, Lcom/android/camera/Clapper;->AMPLITUDE_ABSOLUTE_THRESHOLD:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    int-to-float v10, v2

    int-to-float v11, v8

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 178
    .local v6, "progress":F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/Clapper;->mListener:Lcom/android/camera/Clapper$ClapperListener;

    invoke-interface {v9, v6}, Lcom/android/camera/Clapper$ClapperListener;->heard(F)V

    goto :goto_3
.end method


# virtual methods
.method public start()Z
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/camera/Clapper;->startRecorder()Z

    move-result v0

    .line 77
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 80
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/Clapper$1;

    invoke-direct {v2, p0}, Lcom/android/camera/Clapper$1;-><init>(Lcom/android/camera/Clapper;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 87
    :cond_0
    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 93
    return-void
.end method

.method public stopRecorder()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 110
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/Clapper;->mContinueRecording:Z

    .line 113
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 114
    iget-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 115
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/Clapper;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Clapper"

    const-string v2, "Failed to stop media recorder."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
