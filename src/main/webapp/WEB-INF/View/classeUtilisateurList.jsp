<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="p" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<p:page>
    <jsp:body>
    <div class="flex items-center justify-center w-full p-2 m-2">
        <span class="w-3/5 flex items-center justify-center border-b-2 border-rose border-opacity-50 pb-3">
            <h1 class="text-3xl text-violet font-bold tracking-widest">CLASSE ${ name }</h1>
        </span>
    </div>
    <div class="w-full flex flex-col items-center justify-center">
            <c:forEach items="${students}" var="eleve">
                <div class="flex flex-row m-2 shadow-lg items-center justify-center w-1/3 py-4 px-3 border border-opacity-50 border-gris" style="border-radius: 20px;">
                    <div class="w-1/3">
                        <label class="flex pl-2">
                            <div class="bg-white border-2 border-opacity-50 rounded border-violet w-4 h-4 flex flex-shrink-0 justify-center items-center mr-2 focus-within:border-violet">
                                <input id="${eleve.getID()}" type="checkbox" class="opacity-0 absolute">
                                <svg class="bg-violet opacity-50 hidden w-4 h-4 text-violet pointer-events-none" viewBox="0 0 20 20"><path d="M0 11l2-2 5 5L18 3l2 2L7 18z"/></svg>
                            </div>
                        </label>
                    </div>
                    <div class="w-1/3">
                        <p class=" text-violet">${ eleve.getPrenom() }</p>
                    </div>
                    <div class="w-1/3">
                        <p class="text-violet uppercase">${ eleve.getNom()}</p>
                    </div>
                </div>
            </c:forEach>
    </div>
</body>
</jsp:body>
</p:page>
