.class Lcom/android/camera/ui/StaticGridView;
.super Landroid/view/ViewGroup;
.source "SettingScreenView.java"


# instance fields
.field private mChildHeight:I

.field private mChildWidth:I

.field private mColumnCount:I

.field private mRowCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rowCount"    # I
    .param p3, "columnCount"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .prologue
    .line 251
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 252
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/StaticGridView;->set(IIII)V

    .line 253
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StaticGridView;->setDrawingCacheEnabled(Z)V

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StaticGridView;->setWillNotDraw(Z)V

    .line 255
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 317
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 318
    return-void
.end method

.method protected doLayout(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/StaticGridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 312
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/StaticGridView;->layoutChildByIndex(I)V

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    return-void
.end method

.method protected layoutChildByIndex(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 296
    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    div-int v1, p1, v2

    .line 297
    .local v1, "rowIndex":I
    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    rem-int v0, p1, v2

    .line 298
    .local v0, "columnIndex":I
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    mul-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    mul-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    add-int/lit8 v6, v0, 0x1

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    add-int/lit8 v7, v1, 0x1

    mul-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 303
    return-void
.end method

.method measureDimension(II)I
    .locals 1
    .param p1, "measureSpec"    # I
    .param p2, "contentDimension"    # I

    .prologue
    .line 284
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 292
    const/4 p2, 0x0

    .end local p2    # "contentDimension":I
    :goto_0
    :sswitch_0
    return p2

    .line 288
    .restart local p2    # "contentDimension":I
    :sswitch_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    .line 290
    :sswitch_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 307
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/StaticGridView;->doLayout(IIII)V

    .line 308
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 275
    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    mul-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/StaticGridView;->measureDimension(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    iget v2, p0, Lcom/android/camera/ui/StaticGridView;->mRowCount:I

    mul-int/2addr v1, v2

    invoke-virtual {p0, p2, v1}, Lcom/android/camera/ui/StaticGridView;->measureDimension(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/StaticGridView;->setMeasuredDimension(II)V

    .line 278
    iget v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/StaticGridView;->measureChildren(II)V

    .line 281
    return-void
.end method

.method public set(IIII)V
    .locals 2
    .param p1, "rowCount"    # I
    .param p2, "columnCount"    # I
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 262
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mRowCount:I

    .line 263
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mColumnCount:I

    .line 264
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildHeight:I

    .line 265
    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/StaticGridView;->mChildWidth:I

    .line 266
    return-void
.end method