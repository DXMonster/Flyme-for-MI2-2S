.class Lmiui/util/HapticFeedbackUtil$1;
.super Ljava/lang/Thread;
.source "HapticFeedbackUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/HapticFeedbackUtil;

.field final synthetic val$pattern:[J


# direct methods
.method constructor <init>(Lmiui/util/HapticFeedbackUtil;[J)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lmiui/util/HapticFeedbackUtil$1;->this$0:Lmiui/util/HapticFeedbackUtil;

    iput-object p2, p0, Lmiui/util/HapticFeedbackUtil$1;->val$pattern:[J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 211
    iget-object v0, p0, Lmiui/util/HapticFeedbackUtil$1;->this$0:Lmiui/util/HapticFeedbackUtil;

    # getter for: Lmiui/util/HapticFeedbackUtil;->mVibrator:Landroid/os/Vibrator;
    invoke-static {v0}, Lmiui/util/HapticFeedbackUtil;->access$100(Lmiui/util/HapticFeedbackUtil;)Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lmiui/util/HapticFeedbackUtil$1;->val$pattern:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 212
    return-void
.end method
