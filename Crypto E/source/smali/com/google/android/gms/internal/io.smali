.class public interface abstract Lcom/google/android/gms/internal/io;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/io$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
.end method

.method public abstract a(Lcom/google/android/gms/common/api/Status;Z)V
.end method

.method public abstract a(Lcom/google/android/gms/internal/id$b;)V
.end method

.method public abstract b(Lcom/google/android/gms/common/api/Status;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/appindexing/a;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(Lcom/google/android/gms/common/api/Status;)V
.end method
