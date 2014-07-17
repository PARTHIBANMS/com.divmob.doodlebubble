.class public Lcom/divmob/common/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:[I = null

.field public static final d:I = 0x3

.field public static final e:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    sput v1, Lcom/divmob/common/a/a;->a:I

    const/16 v0, 0x32

    sput v0, Lcom/divmob/common/a/a;->b:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/divmob/common/a/a;->c:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
