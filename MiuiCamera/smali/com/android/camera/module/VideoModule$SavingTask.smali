.class Lcom/android/camera/module/VideoModule$SavingTask;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SavingTask"
.end annotation


# instance fields
.field private mRestart:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/VideoModule;Z)V
    .locals 1
    .param p2, "restart"    # Z

    .prologue
    .line 1709
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1707
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1710
    iput-boolean p2, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1711
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/VideoModule;ZLcom/android/camera/module/VideoModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/module/VideoModule;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/android/camera/module/VideoModule$1;

    .prologue
    .line 1706
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/VideoModule$SavingTask;-><init>(Lcom/android/camera/module/VideoModule;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1715
    const-string v1, "videocamera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SavingTask run mMediaRecorderRecording = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v5}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->access$2302(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1717
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$200(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1718
    const/4 v0, 0x0

    .line 1719
    .local v0, "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->subStopRecording()Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2400(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1720
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_4

    .line 1721
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2500(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1722
    .restart local v0    # "values":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # ++operator for: Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2604(Lcom/android/camera/module/VideoModule;)I

    .line 1723
    invoke-static {}, Lcom/android/camera/storage/Storage;->switchStoragePathIfNeeded()V

    .line 1724
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenHint;->isLowStorageSpace()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->startRecordVideo()Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2700(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    .line 1733
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # invokes: Lcom/android/camera/module/VideoModule;->addVideoToMediaStore(Landroid/content/ContentValues;)Z
    invoke-static {v1, v0}, Lcom/android/camera/module/VideoModule;->access$2800(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->access$2302(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1735
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->mRestart:Z

    if-eqz v1, :cond_6

    .line 1736
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iput-boolean v3, v1, Lcom/android/camera/module/VideoModule;->mRecorderBusy:Z

    .line 1760
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v1, v6}, Lcom/android/camera/module/VideoModule;->access$3002(Lcom/android/camera/module/VideoModule;Lcom/android/camera/module/VideoModule$SavingTask;)Lcom/android/camera/module/VideoModule$SavingTask;

    .line 1761
    return-void

    .restart local v0    # "values":Landroid/content/ContentValues;
    :cond_3
    move v1, v3

    .line 1724
    goto :goto_0

    .line 1726
    :cond_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v1, :cond_5

    .line 1727
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/camera/module/VideoModule;->playCameraSound(I)V

    .line 1729
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2500(Lcom/android/camera/module/VideoModule;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1731
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2600(Lcom/android/camera/module/VideoModule;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # ++operator for: Lcom/android/camera/module/VideoModule;->mCurrentFileNumber:I
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2604(Lcom/android/camera/module/VideoModule;)I

    goto :goto_1

    .line 1738
    :cond_6
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;
    invoke-static {v1, v6}, Lcom/android/camera/module/VideoModule;->access$2502(Lcom/android/camera/module/VideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1739
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.camera.action.stop_video_recording"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/camera/Camera;->sendBroadcast(Landroid/content/Intent;)V

    .line 1740
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mIsVideoCaptureIntent:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$1100(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mSavingResult:Z
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2300(Lcom/android/camera/module/VideoModule;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1741
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v1, v1, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-eqz v1, :cond_9

    .line 1743
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v1

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-boolean v4, v4, Lcom/android/camera/module/VideoModule;->mPaused:Z

    if-nez v4, :cond_8

    :goto_3
    invoke-virtual {v1, v6, v2}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 1750
    :cond_7
    :goto_4
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$3000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;

    move-result-object v2

    monitor-enter v2

    .line 1751
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mVideoSavingTask:Lcom/android/camera/module/VideoModule$SavingTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$3000(Lcom/android/camera/module/VideoModule;)Lcom/android/camera/module/VideoModule$SavingTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1752
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1753
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v1, v1, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mRestoreRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/camera/module/VideoModule;->access$3100(Lcom/android/camera/module/VideoModule;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1754
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1756
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # setter for: Lcom/android/camera/module/VideoModule;->mMediaRecorderRecording:Z
    invoke-static {v1, v3}, Lcom/android/camera/module/VideoModule;->access$202(Lcom/android/camera/module/VideoModule;Z)Z

    .line 1757
    const-string v1, "videocamera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop recording at SavingTask, space = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v3, v3, Lcom/android/camera/module/VideoModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ui/ScreenHint;->getStorageSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    move v2, v3

    .line 1743
    goto :goto_3

    .line 1745
    :cond_9
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2900(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    # getter for: Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;
    invoke-static {v1}, Lcom/android/camera/module/VideoModule;->access$2900(Lcom/android/camera/module/VideoModule;)Landroid/os/AsyncTask;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1746
    :cond_a
    iget-object v1, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    new-instance v2, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;

    iget-object v4, p0, Lcom/android/camera/module/VideoModule$SavingTask;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {v2, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;-><init>(Lcom/android/camera/module/VideoModule;)V

    new-array v4, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/android/camera/module/VideoModule$LoadThumbnailTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    # setter for: Lcom/android/camera/module/VideoModule;->mLoadThumbnailTask:Landroid/os/AsyncTask;
    invoke-static {v1, v2}, Lcom/android/camera/module/VideoModule;->access$2902(Lcom/android/camera/module/VideoModule;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_4

    .line 1754
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method