.class public Lcom/android/settings_ext/view/GridPreference;
.super Landroid/preference/Preference;
.source "GridPreference.java"


# instance fields
.field private amY:Z

.field private amZ:I

.field private ana:I

.field private anb:Lcom/android/settings_ext/view/c;

.field private final bA:Landroid/view/View$OnClickListener;

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mDataSetObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/view/GridPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings_ext/view/GridPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ext/view/GridPreference;->amY:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/view/GridPreference;->amZ:I

    .line 30
    new-instance v0, Lcom/android/settings_ext/view/a;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/view/a;-><init>(Lcom/android/settings_ext/view/GridPreference;)V

    iput-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->bA:Landroid/view/View$OnClickListener;

    .line 58
    const v0, 0x7f040091

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/view/GridPreference;->setLayoutResource(I)V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/view/GridPreference;->ana:I

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/view/GridPreference;)Lcom/android/settings_ext/view/c;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->anb:Lcom/android/settings_ext/view/c;

    return-object v0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings_ext/view/GridPreference;->i(Landroid/view/View;)Landroid/widget/GridLayout;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->setSelected(Z)V

    .line 203
    return-void
.end method

.method private c(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/settings_ext/view/GridPreference;->i(Landroid/view/View;)Landroid/widget/GridLayout;

    move-result-object v2

    .line 186
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 187
    :goto_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 188
    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 189
    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 186
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0

    .line 192
    :cond_1
    return-void
.end method

.method private d(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/settings_ext/view/GridPreference;->i(Landroid/view/View;)Landroid/widget/GridLayout;

    move-result-object v1

    .line 196
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 197
    invoke-virtual {v1, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setSelected(Z)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-void
.end method

.method private i(Landroid/view/View;)Landroid/widget/GridLayout;
    .locals 1

    .prologue
    .line 113
    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    return-object v0
.end method

.method private j(Landroid/view/View;)V
    .locals 9

    .prologue
    const v8, 0x7f040091

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings_ext/view/GridPreference;->i(Landroid/view/View;)Landroid/widget/GridLayout;

    move-result-object v2

    .line 119
    iget-object v1, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    invoke-virtual {v2}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 168
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    .line 125
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v4

    .line 126
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v1, v0

    .line 129
    :goto_1
    if-ge v1, v5, :cond_3

    .line 130
    invoke-virtual {v2, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 131
    iget-object v7, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7, v1, v6, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 133
    invoke-direct {p0, v6}, Lcom/android/settings_ext/view/GridPreference;->k(Landroid/view/View;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 135
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "convert view must be reused!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_3
    :goto_2
    if-ge v1, v3, :cond_4

    .line 140
    iget-object v5, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 141
    invoke-direct {p0, v5}, Lcom/android/settings_ext/view/GridPreference;->k(Landroid/view/View;)V

    .line 142
    invoke-virtual {v2, v5}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 143
    iget-object v6, p0, Lcom/android/settings_ext/view/GridPreference;->bA:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 147
    :cond_4
    if-ge v1, v4, :cond_5

    .line 148
    sub-int/2addr v4, v1

    invoke-virtual {v2, v1, v4}, Landroid/widget/GridLayout;->removeViews(II)V

    .line 152
    :cond_5
    const/16 v1, 0xb

    if-eq v3, v1, :cond_6

    const/16 v1, 0xc

    if-ne v3, v1, :cond_8

    .line 153
    :cond_6
    const v0, 0x7f0201db

    .line 165
    :cond_7
    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->setBackgroundResource(I)V

    .line 167
    invoke-virtual {v2}, Landroid/widget/GridLayout;->requestLayout()V

    goto :goto_0

    .line 154
    :cond_8
    const/16 v1, 0x9

    if-eq v3, v1, :cond_9

    const/16 v1, 0xa

    if-ne v3, v1, :cond_a

    .line 155
    :cond_9
    const v0, 0x7f0201da

    goto :goto_3

    .line 156
    :cond_a
    const/4 v1, 0x7

    if-eq v3, v1, :cond_b

    const/16 v1, 0x8

    if-ne v3, v1, :cond_c

    .line 157
    :cond_b
    const v0, 0x7f0201de

    goto :goto_3

    .line 158
    :cond_c
    const/4 v1, 0x5

    if-eq v3, v1, :cond_d

    const/4 v1, 0x6

    if-ne v3, v1, :cond_e

    .line 159
    :cond_d
    const v0, 0x7f0201dd

    goto :goto_3

    .line 160
    :cond_e
    const/4 v1, 0x3

    if-eq v3, v1, :cond_f

    const/4 v1, 0x4

    if-ne v3, v1, :cond_7

    .line 161
    :cond_f
    const v0, 0x7f0201dc

    goto :goto_3
.end method

.method private k(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    .line 171
    sget-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v2, v3, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    .line 172
    sget-object v1, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v2, v3, v1}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    .line 173
    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 174
    iget v0, p0, Lcom/android/settings_ext/view/GridPreference;->ana:I

    iput v0, v2, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    .line 175
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/view/c;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ext/view/GridPreference;->anb:Lcom/android/settings_ext/view/c;

    .line 106
    return-void
.end method

.method public cC(I)V
    .locals 0

    .prologue
    .line 209
    iput p1, p0, Lcom/android/settings_ext/view/GridPreference;->amZ:I

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ext/view/GridPreference;->update()V

    .line 211
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings_ext/view/GridPreference;->j(Landroid/view/View;)V

    .line 79
    iget-boolean v0, p0, Lcom/android/settings_ext/view/GridPreference;->amY:Z

    invoke-super {p0, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 80
    iget-boolean v0, p0, Lcom/android/settings_ext/view/GridPreference;->amY:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/view/GridPreference;->c(Landroid/view/View;Z)V

    .line 83
    iget v0, p0, Lcom/android/settings_ext/view/GridPreference;->amZ:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/view/GridPreference;->amZ:I

    iget-object v1, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings_ext/view/GridPreference;->d(Landroid/view/View;Z)V

    .line 85
    iget v0, p0, Lcom/android/settings_ext/view/GridPreference;->amZ:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ext/view/GridPreference;->a(Landroid/view/View;IZ)V

    .line 87
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/view/GridPreference;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/android/settings_ext/view/b;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/view/b;-><init>(Lcom/android/settings_ext/view/GridPreference;)V

    iput-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ext/view/GridPreference;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/view/GridPreference;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/view/GridPreference;->update()V

    .line 102
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 180
    iput-boolean p1, p0, Lcom/android/settings_ext/view/GridPreference;->amY:Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ext/view/GridPreference;->update()V

    .line 182
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ext/view/GridPreference;->notifyChanged()V

    .line 110
    return-void
.end method
