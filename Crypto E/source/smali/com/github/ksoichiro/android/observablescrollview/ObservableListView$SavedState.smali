.class Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/ksoichiro/android/observablescrollview/ObservableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState$1;

    invoke-direct {v0}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState$1;-><init>()V

    sput-object v0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .parameter

    .prologue
    .line 282
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->b:I

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->a:I

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->b:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->c:I

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->d:I

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->e:I

    .line 288
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    if-lez v1, :cond_0

    .line 291
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    iget-object v4, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 275
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 265
    const/4 v0, -0x1

    iput v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->b:I

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 302
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    iget v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    move v0, v1

    .line 308
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    if-lez v0, :cond_1

    .line 310
    :goto_1
    if-ge v1, v0, :cond_1

    .line 311
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v2, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/github/ksoichiro/android/observablescrollview/ObservableListView$SavedState;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    goto :goto_0

    .line 315
    :cond_1
    return-void
.end method
