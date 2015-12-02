.class public abstract Lcom/android/camera/ui/V6AbstractIndicator;
.super Landroid/widget/RelativeLayout;
.source "V6AbstractIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field public static final TEXT_COLOR_DEFAULT:I

.field public static final TEXT_COLOR_SELECTED:I


# instance fields
.field protected mContent:Landroid/widget/TextView;

.field protected mExitView:Lcom/android/camera/ui/V6ModeExitView;

.field protected mImage:Lcom/android/camera/ui/TwoStateImageView;

.field protected mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field protected mOrientation:I

.field protected mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

.field protected mPopupRoot:Landroid/view/ViewGroup;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    .line 28
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_SELECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getShowedColor()I
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_SELECTED:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/camera/ui/V6AbstractIndicator;->TEXT_COLOR_DEFAULT:I

    goto :goto_0
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;Lcom/android/camera/ui/MessageDispacher;Landroid/view/ViewGroup;IILcom/android/camera/preferences/PreferenceGroup;)V
    .locals 4
    .param p1, "preference"    # Lcom/android/camera/preferences/IconListPreference;
    .param p2, "p"    # Lcom/android/camera/ui/MessageDispacher;
    .param p3, "popupRoot"    # Landroid/view/ViewGroup;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "preferenceGroup"    # Lcom/android/camera/preferences/PreferenceGroup;

    .prologue
    const/16 v2, -0xa

    .line 56
    iput-object p6, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 57
    iput-object p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 58
    iput-object p2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 59
    iput-object p3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopupRoot:Landroid/view/ViewGroup;

    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "reLayout":Z
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 63
    .local v1, "selfParams":Landroid/view/ViewGroup$LayoutParams;
    if-eq v2, p4, :cond_0

    .line 64
    iput p4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 65
    const/4 v0, 0x1

    .line 67
    :cond_0
    if-eq v2, p5, :cond_1

    .line 68
    iput p5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 69
    const/4 v0, 0x1

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getModeExitView()Lcom/android/camera/ui/V6ModeExitView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mExitView:Lcom/android/camera/ui/V6ModeExitView;

    .line 73
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/TwoStateImageView;->setImageResource(I)V

    .line 75
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateImage()V

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateTitle()V

    .line 77
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateContent()V

    .line 78
    if-eqz v0, :cond_3

    .line 80
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6AbstractIndicator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->requestLayout()V

    .line 83
    :cond_3
    return-void
.end method

.method protected isIndicatorSelected()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 148
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TwoStateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    .line 149
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6AbstractIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mContent:Landroid/widget/TextView;

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->enableFilter(Z)V

    .line 152
    :cond_0
    return-void
.end method

.method public onOtherPopupShowed(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->dismissPopup()Z

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public recoverIfNeeded()V
    .locals 0

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->showPopup()V

    .line 168
    return-void
.end method

.method public reloadPreference()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/TwoStateImageView;->setActivated(Z)V

    .line 143
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPopup:Lcom/android/camera/ui/V6AbstractSettingPopup;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/V6AbstractSettingPopup;->setEnabled(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 6
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 184
    iput p1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mOrientation:I

    .line 185
    neg-int p1, p1

    .line 186
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 188
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getRotation()F

    move-result v3

    float-to-int v2, v3

    .line 189
    .local v2, "rotation":I
    if-ltz v2, :cond_1

    rem-int/lit16 v1, v2, 0x168

    .line 190
    .local v1, "r":I
    :goto_1
    sub-int v0, p1, v1

    .line 191
    .local v0, "deltaR":I
    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 207
    :goto_2
    return-void

    .line 186
    .end local v0    # "deltaR":I
    .end local v1    # "r":I
    .end local v2    # "rotation":I
    :cond_0
    rem-int/lit16 v3, p1, 0x168

    add-int/lit16 p1, v3, 0x168

    goto :goto_0

    .line 189
    .restart local v2    # "rotation":I
    :cond_1
    rem-int/lit16 v3, v2, 0x168

    add-int/lit16 v1, v3, 0x168

    goto :goto_1

    .line 195
    .restart local v0    # "deltaR":I
    .restart local v1    # "r":I
    :cond_2
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xb4

    if-le v3, v4, :cond_3

    .line 196
    if-ltz v0, :cond_4

    .line 197
    add-int/lit16 v0, v0, -0x168

    .line 202
    :cond_3
    :goto_3
    if-eqz p2, :cond_5

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    div-int/lit16 v4, v4, 0x10e

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    .line 199
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 205
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    add-int v4, v2, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->updateTitle()V

    .line 137
    return-void
.end method

.method public showPopup()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method protected updateContent()V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method protected updateImage()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 90
    const-string v2, "Camera5"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateImage= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " default="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->isDefaultValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isIndicatorSelected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isIndicatorSelected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    if-nez v2, :cond_0

    .line 110
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v2, v0}, Lcom/android/camera/ui/TwoStateImageView;->setVisibility(I)V

    .line 98
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/TwoStateImageView;->setEnabled(Z)V

    .line 100
    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v1, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    iget-object v3, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->isDefaultValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->isIndicatorSelected()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/TwoStateImageView;->setSelected(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mImage:Lcom/android/camera/ui/TwoStateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/TwoStateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateTitle()V
    .locals 4

    .prologue
    .line 117
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    instance-of v2, p0, Lcom/android/camera/ui/V6IndicatorButton;

    if-nez v2, :cond_0

    .line 121
    if-eqz v1, :cond_2

    .line 122
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/V6AbstractIndicator;->getShowedColor()I

    move-result v0

    .line 124
    .local v0, "color":I
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 126
    .end local v0    # "color":I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/V6AbstractIndicator;->mTitle:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
