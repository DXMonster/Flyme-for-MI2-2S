.class Lcom/android/settings_ext/bL;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# instance fields
.field final synthetic jB:Lcom/android/settings_ext/DeviceAdminSettings;

.field final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/DeviceAdminSettings;)V
    .locals 2

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 178
    invoke-virtual {p1}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/bL;->mInflater:Landroid/view/LayoutInflater;

    .line 180
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings_ext/bL;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 306
    new-instance v2, Lcom/android/settings_ext/bM;

    invoke-direct {v2}, Lcom/android/settings_ext/bM;-><init>()V

    .line 307
    const v0, 0x7f100051

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/settings_ext/bM;->icon:Landroid/widget/ImageView;

    .line 308
    const v0, 0x7f100046

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings_ext/bM;->jC:Landroid/widget/TextView;

    .line 309
    const v0, 0x7f1000b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/android/settings_ext/bM;->jD:Landroid/widget/CheckBox;

    .line 310
    const v0, 0x7f1000b6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings_ext/bM;->jE:Landroid/widget/TextView;

    .line 311
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 312
    return-object v1
.end method

.method private a(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V
    .locals 6

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/bM;

    .line 327
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 328
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v5, p2}, Lcom/android/settings_ext/DeviceAdminSettings;->b(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 330
    iget-object v3, v0, Lcom/android/settings_ext/bM;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v2, v0, Lcom/android/settings_ext/bM;->jC:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v2, v0, Lcom/android/settings_ext/bM;->jD:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v3, p2}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 333
    invoke-direct {p0, p2}, Lcom/android/settings_ext/bL;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    .line 335
    :try_start_0
    iget-object v3, v0, Lcom/android/settings_ext/bM;->jE:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    iget-object v1, v0, Lcom/android/settings_ext/bM;->jD:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 339
    iget-object v1, v0, Lcom/android/settings_ext/bM;->jC:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    iget-object v1, v0, Lcom/android/settings_ext/bM;->jE:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 341
    iget-object v0, v0, Lcom/android/settings_ext/bM;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 342
    return-void

    .line 336
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/settings_ext/bL;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const v3, 0x101008c

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 319
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 321
    iget-object v1, p0, Lcom/android/settings_ext/bL;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isEnabled(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 274
    instance-of v1, p1, Landroid/app/admin/DeviceAdminInfo;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    check-cast p1, Landroid/app/admin/DeviceAdminInfo;

    .line 279
    iget-object v1, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v1, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v1, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->b(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v1, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->c(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v1, p1}, Lcom/android/settings_ext/DeviceAdminSettings;->d(Lcom/android/settings_ext/DeviceAdminSettings;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 283
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 189
    .line 190
    iget-object v1, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v1}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 191
    :goto_0
    if-ge v1, v3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v2, v0

    .line 191
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_0
    add-int v0, v2, v3

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 206
    if-gez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 214
    const/4 v0, 0x0

    move v1, v0

    .line 215
    :goto_0
    if-ge v1, v2, :cond_1

    .line 217
    iget-object v0, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 218
    if-ge p1, v0, :cond_2

    .line 223
    :cond_1
    if-ne v1, v2, :cond_3

    .line 224
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 221
    :cond_2
    sub-int/2addr p1, v0

    .line 215
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 227
    :cond_3
    if-nez p1, :cond_5

    .line 228
    iget-object v0, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-virtual {v0}, Lcom/android/settings_ext/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 229
    iget-object v2, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v2}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 230
    const v1, 0x7f0907a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    :goto_1
    return-object v0

    .line 232
    :cond_4
    const v1, 0x7f0907a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/bL;->jB:Lcom/android/settings_ext/DeviceAdminSettings;

    invoke-static {v0}, Lcom/android/settings_ext/DeviceAdminSettings;->a(Lcom/android/settings_ext/DeviceAdminSettings;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 242
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bL;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 264
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bL;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 289
    instance-of v1, v0, Landroid/app/admin/DeviceAdminInfo;

    if-eqz v1, :cond_1

    .line 290
    if-nez p2, :cond_0

    .line 291
    invoke-direct {p0, p3}, Lcom/android/settings_ext/bL;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 293
    :cond_0
    check-cast v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {p0, p2, v0}, Lcom/android/settings_ext/bL;->a(Landroid/view/View;Landroid/app/admin/DeviceAdminInfo;)V

    .line 301
    :goto_0
    return-object p2

    .line 295
    :cond_1
    if-nez p2, :cond_2

    .line 296
    invoke-direct {p0, p3}, Lcom/android/settings_ext/bL;->b(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 298
    :cond_2
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 299
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/bL;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 270
    invoke-direct {p0, v0}, Lcom/android/settings_ext/bL;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
