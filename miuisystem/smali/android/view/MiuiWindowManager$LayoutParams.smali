.class public Landroid/view/MiuiWindowManager$LayoutParams;
.super Landroid/view/WindowManager$LayoutParams;
.source "MiuiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MiuiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final EXTRA_FLAG_STATUS_BAR_DARK_MODE:I = 0x10

.field public static final EXTRA_FLAG_STATUS_BAR_HIDE:I = 0x20

.field public static final EXTRA_FLAG_STATUS_BAR_LOW_PROFILE:I = 0x2

.field public static final EXTRA_FLAG_STATUS_BAR_MASK:I = 0x3b

.field public static final EXTRA_FLAG_STATUS_BAR_SIMPLE_MODE:I = 0x8

.field public static final EXTRA_FLAG_STATUS_BAR_TRANSPARENT:I = 0x1

.field public static final PRIVATE_FLAG_LOCKSCREEN_DISPALY_DESKTOP:I = 0x8000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    return-void
.end method
