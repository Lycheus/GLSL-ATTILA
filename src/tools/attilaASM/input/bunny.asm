!!ARBvp1.0

PARAM mvp[4]  = { state.matrix.mvp };

ATTRIB iVertex = vertex.position;
ATTRIB iTex    = vertex.texcoord[0];

OUTPUT oPos     = result.position;
OUTPUT oTex     = result.texcoord[0];
OUTPUT lightVec = result.texcoord[1];
OUTPUT viewVec  = result.texcoord[2];

PARAM lightPos  = program.local[0];
PARAM cameraPos = program.local[1];

DP4 oPos.x, mvp[0], iVertex;
DP4 oPos.y, mvp[1], iVertex;
DP4 oPos.z, mvp[2], iVertex;
DP4 oPos.w, mvp[3], iVertex;

MOV     oTex, iTex;
SUB     lightVec, lightPos,  iVertex;
SUB     viewVec,  cameraPos, iVertex;
END
	