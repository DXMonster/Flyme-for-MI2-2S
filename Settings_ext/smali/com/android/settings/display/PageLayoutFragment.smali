.class public Lcom/android/settings_ext/display/PageLayoutFragment;
.super Lmiui/app/Fragment;
.source "PageLayoutFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/settings_ext/widget/j;


# static fields
.field private static final Vf:[I

.field private static final Vg:[I

.field private static final Vh:[I

.field private static final Vi:[I

.field private static final Vj:[F

.field private static final Vk:Ljava/util/HashMap;

.field private static final Vl:Ljava/util/HashMap;

.field private static final Vm:Ljava/util/HashMap;

.field private static final Vn:Ljava/util/HashMap;

.field private static final Vo:Ljava/util/HashMap;

.field private static final Vp:Ljava/util/HashMap;

.field private static final Vq:Ljava/util/HashMap;

.field private static final Vr:Ljava/util/HashMap;

.field private static final Vs:Ljava/util/HashMap;

.field private static final Vt:Ljava/util/HashMap;


# instance fields
.field private Vu:Lcom/android/settings_ext/widget/ScreenView;

.field private Vv:I

.field private Vw:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private sE:Z

.field private tP:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vg:[I

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vh:[I

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vi:[I

    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vj:[F

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    .line 133
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    const v1, 0x7f100182

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const v1, 0x7f100185

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c0015

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const v1, 0x7f10018a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c0016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    const v1, 0x7f100182

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c0017

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const v1, 0x7f100185

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c0018

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const v1, 0x7f10018a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0c0019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dda

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090ddb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090ddc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090ddd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dde

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090ddf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090de0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090de1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090de2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090de3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090de4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dd5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dd6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f090dd7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00dc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00dd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00de

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00df

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00e9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00ea

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00eb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00ec

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0d00ed

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f0201f2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 64
    :array_0
    .array-data 4
        0x7f100182
        0x7f100185
        0x7f10018a
    .end array-data

    .line 72
    :array_1
    .array-data 4
        0x7f100176
        0x7f100177
        0x7f100178
        0x7f100179
        0x7f10017a
    .end array-data

    .line 80
    :array_2
    .array-data 4
        0x7f100182
        0x7f100185
        0x7f10018a
    .end array-data

    .line 86
    :array_3
    .array-data 4
        0x7f10018d
        0x7f10018e
        0x7f10018f
    .end array-data

    .line 92
    :array_4
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3ecccccd    # 0.4f
        0x3f19999a    # 0.6f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lmiui/app/Fragment;-><init>()V

    .line 212
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 569
    new-instance v0, Lcom/android/settings_ext/display/s;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/display/s;-><init>(Lcom/android/settings_ext/display/PageLayoutFragment;)V

    iput-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 611
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/display/PageLayoutFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    return v0
.end method

.method private static a(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 604
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 605
    const-string v1, "data_selected_uimode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 606
    const-string v1, "data_selected_fontscale"

    invoke-static {p1}, Lcom/android/settings_ext/display/n;->getFontScale(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 607
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 609
    return-void
.end method

.method private a(Landroid/view/View;F)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 554
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 555
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 562
    :cond_0
    return-void

    .line 556
    :cond_1
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 557
    check-cast p1, Landroid/view/ViewGroup;

    .line 558
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 559
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic aH(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/display/PageLayoutFragment;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->sE:Z

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 566
    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private g(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 351
    iput-object p1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    .line 352
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 354
    const v0, 0x7f100174

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/widget/ScreenView;

    iput-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vu:Lcom/android/settings_ext/widget/ScreenView;

    .line 355
    const v0, 0x7f10017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    const v0, 0x7f10017d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    const v0, 0x7f10017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    const v0, 0x7f100120

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->tP:Landroid/widget/SeekBar;

    .line 360
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 362
    const v0, 0x7f100175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/widget/FontLinearLayout;

    .line 363
    invoke-virtual {v0, p0}, Lcom/android/settings_ext/widget/FontLinearLayout;->a(Lcom/android/settings_ext/widget/j;)V

    .line 367
    iget v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    sparse-switch v0, :sswitch_data_0

    move v0, v3

    move v1, v3

    .line 388
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->tP:Landroid/widget/SeekBar;

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {v5, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 390
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 391
    const v0, 0x7f100183

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090dc0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    const v0, 0x7f100184

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090dbf

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    const v0, 0x7f100186

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090de7

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    const v0, 0x7f100187

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 398
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090dc2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    const v0, 0x7f100188

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 400
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090dc3

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    const v0, 0x7f100189

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 402
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f090de6

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    const v0, 0x7f100181

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 404
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v6, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 409
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 410
    iget-object v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vu:Lcom/android/settings_ext/widget/ScreenView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 411
    iget-boolean v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->sE:Z

    if-eqz v0, :cond_1

    .line 412
    const v0, 0x7f10017c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 413
    const v0, 0x7f10017f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oD()V

    .line 417
    return-void

    .line 369
    :sswitch_0
    const/4 v1, -0x6

    .line 370
    const/4 v0, 0x1

    .line 371
    goto/16 :goto_0

    .line 373
    :sswitch_1
    const/4 v0, -0x1

    move v7, v1

    move v1, v0

    move v0, v7

    .line 375
    goto/16 :goto_0

    .line 378
    :sswitch_2
    const/4 v0, 0x3

    .line 379
    goto/16 :goto_0

    :sswitch_3
    move v0, v2

    move v1, v4

    .line 383
    goto/16 :goto_0

    .line 385
    :sswitch_4
    const/4 v0, 0x5

    move v1, v3

    goto/16 :goto_0

    .line 367
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_4
        0xd -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method private oD()V
    .locals 14

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f10018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 421
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vv:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 422
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 423
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 424
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100181

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 425
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vv:I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 426
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vq:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 427
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vt:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 429
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 430
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 432
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 433
    if-eqz v0, :cond_0

    .line 434
    sget-object v3, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 435
    iget-object v5, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v5, v1}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 434
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 439
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 440
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 442
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vn:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 443
    sget-object v3, Lcom/android/settings_ext/display/PageLayoutFragment;->Vh:[I

    array-length v4, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 444
    iget-object v7, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 446
    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v7, v1, v8, v1, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 443
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 449
    :cond_1
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 450
    if-eqz v0, :cond_4

    .line 451
    sget-object v4, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v7, v4

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v7, :cond_4

    aget v1, v4, v3

    .line 452
    iget-object v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 453
    invoke-virtual {v8, v5, v6}, Landroid/view/View;->measure(II)V

    .line 454
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 455
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 456
    instance-of v10, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v10, :cond_2

    .line 457
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/lit8 v9, v9, 0x2

    sub-int v9, v1, v9

    move-object v1, v2

    .line 458
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 459
    if-gez v9, :cond_3

    .line 460
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 451
    :cond_2
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 462
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 463
    invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    .line 469
    :cond_4
    const/4 v1, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 472
    sget-object v9, Lcom/android/settings_ext/display/PageLayoutFragment;->Vg:[I

    array-length v10, v9

    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_4
    if-ge v2, v10, :cond_8

    aget v11, v9, v2

    .line 473
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 474
    invoke-virtual {v12, v5, v6}, Landroid/view/View;->measure(II)V

    .line 475
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 476
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 477
    instance-of v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_6

    move-object v0, v1

    .line 478
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int v13, v4, v3

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v7, v13

    iput v13, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 479
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vg:[I

    const/4 v13, 0x0

    aget v0, v0, v13

    if-ne v11, v0, :cond_7

    move-object v0, v1

    .line 480
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, 0x0

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 484
    :cond_5
    :goto_5
    invoke-virtual {v12, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    :cond_6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v4

    goto :goto_4

    .line 481
    :cond_7
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vg:[I

    const/4 v13, 0x1

    aget v0, v0, v13

    if-ne v11, v0, :cond_5

    move-object v0, v1

    .line 482
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v3, v11

    sub-int v3, v7, v3

    add-int/2addr v3, v8

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 489
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100180

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vm:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 490
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 492
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 493
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f100177

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 494
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 495
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f100176

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 496
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 497
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f100178

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 498
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 499
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f100179

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 500
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 501
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f10017a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 502
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 503
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f10017b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 504
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 507
    sget-object v4, Lcom/android/settings_ext/display/PageLayoutFragment;->Vi:[I

    array-length v5, v4

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v5, :cond_a

    aget v0, v4, v2

    .line 508
    iget-object v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 509
    const v0, 0x1020016

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 510
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vo:Ljava/util/HashMap;

    iget v7, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vr:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 512
    const v0, 0x1020010

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 513
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vp:Ljava/util/HashMap;

    iget v7, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vs:Ljava/util/HashMap;

    iget v8, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/display/PageLayoutFragment;->a(Landroid/view/View;F)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f080044

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 516
    iget v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    const/16 v7, 0xb

    if-ne v1, v7, :cond_9

    .line 517
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x7f0d00c0

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 518
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v7

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v8

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v1, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 520
    :cond_9
    sget v0, Lmiui/R$id;->arrow_right:I

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    const v0, 0x1020006

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    sget v0, Lmiui/R$drawable;->preference_item_bg:I

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 507
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    .line 525
    :cond_a
    iget v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    sparse-switch v0, :sswitch_data_0

    .line 551
    :goto_7
    return-void

    .line 527
    :sswitch_0
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 528
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 531
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100177

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 532
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 535
    :sswitch_2
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100178

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 536
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 539
    :sswitch_3
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f100179

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 540
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 543
    :sswitch_4
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f10017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 544
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 547
    :sswitch_5
    iget-object v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f10017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 548
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_7

    .line 525
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
    .end sparse-switch
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/widget/FontLinearLayout;F)V
    .locals 6

    .prologue
    .line 742
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vj:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 743
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vj:[F

    aget v1, v1, v0

    sub-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v2, v1

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->tP:Landroid/widget/SeekBar;

    mul-int/lit8 v2, v0, 0x3c

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 745
    iget-object v1, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->tP:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/display/PageLayoutFragment;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 742
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 748
    :cond_1
    return-void
.end method

.method public oE()I
    .locals 5

    .prologue
    .line 751
    const/4 v0, 0x0

    .line 752
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 753
    if-lez v1, :cond_0

    .line 754
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 756
    :cond_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/16 v9, 0xc

    const/16 v8, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 217
    invoke-super {p0, p1}, Lmiui/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 219
    invoke-static {}, Lcom/android/settings_ext/display/n;->oy()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 220
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/display/PageLayoutFragment;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->sE:Z

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oE()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vv:I

    .line 225
    invoke-virtual {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 226
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 227
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const v0, 0x7f0b00d0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 229
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_0

    .line 230
    const v0, 0x7f0b00dc

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :cond_0
    move v3, v2

    .line 232
    :goto_1
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 233
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 220
    goto :goto_0

    .line 236
    :cond_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 237
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const v0, 0x7f0b00d1

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 239
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v3, :cond_3

    .line 240
    const v0, 0x7f0b00dd

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :cond_3
    move v3, v2

    .line 242
    :goto_2
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v6, v6

    if-ge v3, v6, :cond_4

    .line 243
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 246
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 247
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    .line 249
    const v0, 0x7f0b00d2

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_3
    move v3, v2

    .line 253
    :goto_4
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v6, v6

    if-ge v3, v6, :cond_6

    .line 254
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 251
    :cond_5
    const v0, 0x7f0b00de

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_3

    .line 257
    :cond_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 258
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_7

    .line 260
    const v0, 0x7f0b00d3

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_5
    move v3, v2

    .line 264
    :goto_6
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v6, v6

    if-ge v3, v6, :cond_8

    .line 265
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 262
    :cond_7
    const v0, 0x7f0b00df

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_5

    .line 268
    :cond_8
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 269
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_9

    .line 271
    const v0, 0x7f0b00d4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_7
    move v3, v2

    .line 275
    :goto_8
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v6, v6

    if-ge v3, v6, :cond_a

    .line 276
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 273
    :cond_9
    const v0, 0x7f0b00e0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_7

    .line 279
    :cond_a
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 280
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vk:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_b

    .line 282
    const v0, 0x7f0b00d5

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    :goto_9
    move v3, v2

    .line 286
    :goto_a
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v6, v6

    if-ge v3, v6, :cond_c

    .line 287
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 284
    :cond_b
    const v0, 0x7f0b00e1

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_9

    .line 291
    :cond_c
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 292
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const v0, 0x7f0b00d6

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    move v0, v2

    .line 294
    :goto_b
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v6, v6

    if-ge v0, v6, :cond_d

    .line 295
    sget-object v6, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aget v7, v5, v0

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 298
    :cond_d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 299
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const v0, 0x7f0b00d7

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    move v0, v2

    .line 301
    :goto_c
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v5, v5

    if-ge v0, v5, :cond_e

    .line 302
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v1, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 305
    :cond_e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 306
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const v0, 0x7f0b00d8

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move v0, v2

    .line 308
    :goto_d
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v5, v5

    if-ge v0, v5, :cond_f

    .line 309
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v3, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 312
    :cond_f
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const v0, 0x7f0b00d9

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move v0, v2

    .line 315
    :goto_e
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v5, v5

    if-ge v0, v5, :cond_10

    .line 316
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v3, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 319
    :cond_10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 320
    sget-object v0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const v0, 0x7f0b00da

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    move v0, v2

    .line 322
    :goto_f
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v5, v5

    if-ge v0, v5, :cond_11

    .line 323
    sget-object v5, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v5, v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aget v6, v3, v0

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 326
    :cond_11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 327
    sget-object v1, Lcom/android/settings_ext/display/PageLayoutFragment;->Vl:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const v1, 0x7f0b00db

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 329
    :goto_10
    sget-object v3, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    array-length v3, v3

    if-ge v2, v3, :cond_12

    .line 330
    sget-object v3, Lcom/android/settings_ext/display/PageLayoutFragment;->Vf:[I

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget v4, v1, v2

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 332
    :cond_12
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 336
    const v0, 0x7f04009b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 337
    new-instance v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/preference/PreferenceFrameLayout$LayoutParams;-><init>(II)V

    .line 339
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 340
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .prologue
    .line 663
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8

    .prologue
    const/16 v7, 0xe

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 671
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 672
    rem-int/lit8 v1, v0, 0x3c

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 673
    add-int/lit8 v0, v0, 0x1e

    .line 675
    :cond_0
    div-int/lit8 v1, v0, 0x3c

    .line 676
    const/4 v0, 0x0

    .line 677
    packed-switch v1, :pswitch_data_0

    .line 719
    :cond_1
    :goto_0
    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 720
    return-void

    .line 679
    :pswitch_0
    iget v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    if-eq v2, v5, :cond_1

    .line 680
    iput v5, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 681
    invoke-direct {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oD()V

    goto :goto_0

    .line 685
    :pswitch_1
    iget v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    if-eq v0, v3, :cond_2

    .line 686
    iput v3, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 687
    invoke-direct {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oD()V

    .line 689
    :cond_2
    const/4 v0, -0x6

    .line 690
    goto :goto_0

    .line 692
    :pswitch_2
    iget v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    if-eq v0, v6, :cond_3

    .line 693
    iput v6, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 694
    invoke-direct {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oD()V

    .line 696
    :cond_3
    const/4 v0, -0x1

    .line 697
    goto :goto_0

    .line 699
    :pswitch_3
    iget v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    if-eq v0, v7, :cond_4

    .line 700
    iput v7, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 701
    invoke-direct {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oD()V

    .line 703
    :cond_4
    const/4 v0, 0x2

    .line 704
    goto :goto_0

    .line 706
    :pswitch_4
    iget v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_5

    .line 707
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 708
    invoke-direct {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oD()V

    .line 710
    :cond_5
    const/16 v0, 0x8

    .line 711
    goto :goto_0

    .line 713
    :pswitch_5
    iget v2, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    if-eq v2, v4, :cond_1

    .line 714
    iput v4, p0, Lcom/android/settings_ext/display/PageLayoutFragment;->Vw:I

    .line 715
    invoke-direct {p0}, Lcom/android/settings_ext/display/PageLayoutFragment;->oD()V

    goto :goto_0

    .line 677
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 346
    invoke-super {p0, p1, p2}, Lmiui/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/android/settings_ext/display/PageLayoutFragment;->g(Landroid/view/View;)V

    .line 348
    return-void
.end method
